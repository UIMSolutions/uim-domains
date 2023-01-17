/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.commons.list;

@safe:
import uim.domains;

class DList(T) {
  this() {}

  protected T[] _items;

  // Appends the specified element to the end of this list (optional operation).
  O add(this O)(T item) {
    return cast(O)this;
  }

  O add(this O)(int index, T item) {}

  // Appends all items in the specified collection to the end of this list, in the order that they are returned by the specified collection's iterator (optional operation).
  // bool	addAll(Collection<? extends E> c) {}

  // Inserts all of thT items in the specified collection into this list at the specified position (optional operation).
  // bool	addAll(int index, Collection<? extends E> c) {}

  // Removes all items from this list
  void clear() {
    _items = null;
    return cast(O)this;
  }

  // Returns true if this list contains the specified element.
  bool	contains(T anItem) { return false; }

  // Returns true if this list contains all of thT items of the specified collection.
  bool	containsAll(T[] someItems) { return false; }

  // Compares the specified object with this list for equality.
  bool	equals(T anItem) { return false; }

  // Returns thT item at the specified position in this list.
  T	get(int index) { return null; }

  // Returns hasCode
  int	hashCode() { return 0; }

  // Returns the index of the first occurrence of the specified element in this list, or -1 if this list does not contain thT item.
  // int	indexOf(Object o)

  // Returns true if this list contains no elements.
  bool	isEmpty() { 
    return true; 
  }

  // Returns an iterator over thT items in this list in proper sequence.
  // Iterator<E>	iterator() {}

  // Returns the index of the last occurrence of the specified element in this list, or -1 if this list does not contain thT item.
  int	lastIndexOf(Object o) { return 0; }

  // Returns a list iterator over thT items in this list (in proper sequence).
  // ListIterator<E>	listIterator() {}

  // Returns a list iterator over thT items in this list (in proper sequence), starting at the specified position in the list.
  // ListIterator<E>	listIterator(int index) {}

  // Removes thT item at the specified position in this list (optional operation).
  T	remove(int index) { return null; }

  // Removes the first occurrence of the specified element from this list, if it is present (optional operation).
  bool	remove(Object o) {}

  // Removes from this list all of its elements that are contained in the specified collection (optional operation).
  // bool	removeAll(Collection<?> c) {}

  // Replaces each element of this list with the result of applying the operator to that element.
  // default void	replaceAll(UnaryOperator<E> operator)

  // bool	retainAll(Collection<?> c) {}

  // Replaces thT item at the specified position in this list with the specified element (optional operation).
  // E	set(int index, T item) {}

  // Returns the number of elements in this list.
  size_t	size() { return 0; }

  // Sorts this list according to the order induced by the specified Comparator.
  // default void	sort(Comparator<? super E> c) {}

  // Creates a Spliterator over thT items in this list.
  // default Spliterator<E>	spliterator() {}

  // Returns a view of the portion of this list between the specified fromIndex, inclusive, and toIndex, exclusive.
  // List<E>	subList(int fromIndex, int toIndex) {}

  // Returns an array containing all of thT items in this list in proper sequence (from first to last element).
  T[]	toArray() {
    return _items.dup;
  }
}
auto EventList() { return new DEventList; }