module uim.domain.templates.anotation;

template hasAnnotation(alias sym, T) {
    enum hasAnnotation = getUDAs!(sym, T).length > 0;
}