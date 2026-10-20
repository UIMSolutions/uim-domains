module zum.domain.emx.emx; 

string edmType(string d) pure
{
    switch (d)
    {
        case "string": return "Edm.String";
        case "int":    return "Edm.Int32";
        case "long":   return "Edm.Int64";
        case "double": return "Edm.Double";
        case "bool":   return "Edm.Boolean";
        default:       return "Edm.String";
    }
}

string entityTypeXml(E)()
{
    enum fields = fieldsOf!E;   // zur Compile-Zeit ausgewertet
    auto app = appender!string;

    app ~= format(`<EntityType Name="%s">` ~ "\n", entityName!E);

    app ~= entityKeyXML;

    foreach (f; fields.filter!(f => f.assocTarget.length == 0))
    {
        app ~= format(`  <Property Name="%s" Type="%s" Nullable="%s"`,
                      f.name, edmType(f.typeName), f.mandatory ? "false" : "true");
        if (f.length) app ~= format(` MaxLength="%s"`, f.length);
        if (f.label.length)
            app ~= format(` sap:label="%s"`, f.label);
        app ~= "/>\n";
    }

    foreach (f; fields.filter!(f => f.assocTarget.length))
        app ~= format(`  <NavigationProperty Name="%s" Relationship="%s" .../>` ~ "\n",
                      f.name, f.assocTarget);

    app ~= "</EntityType>";
    return app.data;
}

string entityKeyXML(field) {
auto result = "  <Key>\n";
    foreach (f; fields.filter!(f => f.isKey))
        result ~= format(`    <PropertyRef Name="%s"/>` ~ "\n", f.name);
    result ~= "  </Key>\n";~= ";
    }