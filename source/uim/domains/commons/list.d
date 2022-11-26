/*********************************************************************************************************
*	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      *
**********************************************************************************************************/
module uim.domains.commons.list;

@safe:
import uim.domains;

class DList {
  this() {}

  protected T[] _items;

  Appends the specified element to the end of this list (optional operation).
  O add(this O)(T item) {
    return cast(O)this;
  }

  O (this O)add(int index, T item) {}

  // Appends all items in the specified collection to the end of this list, in the order that they are returned by the specified collection's iterator (optional operation).
  boolean	addAll(Collection<? extends E> c) {}

  // Inserts all of thT items in the specified collection into this list at the specified position (optional operation).
  boolean	addAll(int index, Collection<? extends E> c) {}

  // Removes all items from this list
  void	clear() {
    _items = null;
    return cast(O)this;
  }

  Returns true if this list contains the specified element.
  boolean	contains(Object o) {}

  // Returns true if this list contains all of thT items of the specified collection.
  boolean	containsAll(Collection<?> c) {}

  Compares the specified object with this list for equality.
  boolean	equals(Object o) {}

  Returns thT item at the specified position in this list.
  T	get(int index) {}

  Returns hasCode
  int	hashCode() {}

  // Returns the index of the first occurrence of the specified element in this list, or -1 if this list does not contain thT item.
  int	indexOf(Object o)

  // Returns true if this list contains no elements.
  boolean	isEmpty() {}

  // Returns an iterator over thT items in this list in proper sequence.
  Iterator<E>	iterator() {}

  // Returns the index of the last occurrence of the specified element in this list, or -1 if this list does not contain thT item.
  int	lastIndexOf(Object o) {}

  // Returns a list iterator over thT items in this list (in proper sequence).
  ListIterator<E>	listIterator() {}

  // Returns a list iterator over thT items in this list (in proper sequence), starting at the specified position in the list.
  ListIterator<E>	listIterator(int index) {}

  // Removes thT item at the specified position in this list (optional operation).
  T	remove(int index) {}

  // Removes the first occurrence of the specified element from this list, if it is present (optional operation).
  boolean	remove(Object o) {}

  // Removes from this list all of its elements that are contained in the specified collection (optional operation).
  boolean	removeAll(Collection<?> c) {}

  // Replaces each element of this list with the result of applying the operator to that element.
  default void	replaceAll(UnaryOperator<E> operator)

  boolean	retainAll(Collection<?> c) {}

  // Replaces thT item at the specified position in this list with the specified element (optional operation).
  E	set(int index, T item) {}

  // Returns the number of elements in this list.
  int	size() {}

  // Sorts this list according to the order induced by the specified Comparator.
  default void	sort(Comparator<? super E> c) {}

  // Creates a Spliterator over thT items in this list.
  default Spliterator<E>	spliterator() {}

  // Returns a view of the portion of this list between the specified fromIndex, inclusive, and toIndex, exclusive.
  List<E>	subList(int fromIndex, int toIndex) {}

  // Returns an array containing all of thT items in this list in proper sequence (from first to last element).
  T[]	toArray() {
    return _items.dup;
  }
}
auto EventList() { return new DEventList; }