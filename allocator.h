//
// Created by HXH on 2022/3/14.
//
#ifndef MYSTL_ALLOCATOR_H
#define MYSTL_ALLOCATOR_H


#include "construct.h"
#include <cstddef>
#include <new>
namespace mystl
{

template <class T>
class allocator
{
public:
    typedef T         value_type;
    typedef T*        pointer;
    typedef const T   const_pointer;
    typedef T&        reference;
    typedef size_t    size_type;
    typedef ptrdiff_t  difference_type;

public:
    static pointer allocate();
    static pointer  allocate(size_type n);

    static void deallocate(T* ptr, size_type n = 0);  //修改成一个有默认参数的函数 , n is unused

    static void construct(T* ptr);
    static void construct(T* ptr, const T&value);
//    static void construct(pointer ptr, reference& value);  move函数暂时不能理解
//    template<class... Args>                                  需要util中的函数
//    static void construct(T* ptr, Args&& ...args);

    static void destroy(T* ptr);
    static void destroy(T* first, T* last);

};

template<class T>
 T* allocator<T>::allocate(){
    return static_cast<T*>(::operator new(sizeof(T)))
}
template<class T>
 T* allocator<T>::allocate(size_type n){
    if(n==0)
        return nullptr;
    return static_cast<pointer>(::operator new (n * sizeof(T)))
}

template<class T>
void allocator<T>::deallocate(T* ptr, size_type n) {
    if(ptr == nullptr)
        return;
    ::operator delete(ptr);
}

template<class T>
void allocator<T>::construct(T* ptr) {
    mystl::construct(ptr);
}

template<class T>
void allocator<T>::construct(T* ptr, const T &value) {
    mystl::construct(ptr, value);
}
//template<class T>
//void allocator<T>::construct(allocator::pointer ptr, allocator::reference &value){
//    mystl::construct(ptr, mystl::move(value));

//template<class T>
//template<class... Args>
//void allocator<T>::construct(T *ptr, Args &&... args) {
//    mystl::construct(ptr, mystl::forward<Args>(args)...);
//}

template<class T>
void allocator<T>::destroy(T *ptr) {
    mystl::destroy(ptr);
}

template<class T>
void allocator<T>::destroy(T *first, T *last) {
    mystl::destroy(first, last);
}




}


#endif //MYSTL_ALLOCATOR_H
