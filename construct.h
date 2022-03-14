#ifndef MYSTL_CONSTRUCT_H
#define MYSTL_CONSTRUCT_H

#include <new>
#include <cstddef>

namespace mystl
{
// construct 构造函数
    template <class Ty>
    void construct(Ty* ptr)
    {
        ::new ((void*) ptr) Ty();
    }

    template <class Ty1, class Ty2>
    void construct(Ty1* ptr, const Ty2& value)
    {
        ::new ((void*) ptr) Ty1(value);
    }

//    destroy函数
    template <class Ty>
    void destroy_one(Ty*, std::true_type) {}

    template <class Ty>
    void destroy_one(Ty* pointer, std::false_type)
    {
        if (pointer != nullptr)
        {
            pointer->~Ty();
        }
    }

    template <class Ty>
    void destroy(Ty* pointer)
    {
        destroy_one(pointer, std::is_trivially_destructible<Ty>{});
    }

    template <class ForwardIter>
    void destroy(ForwardIter first, ForwardIter last)
    {
        destroy_cat(first, last, std::is_trivially_destructible<
                typename iterator_traits<ForwardIter>::value_type>{});
    }
}


#endif //MYSTL_CONSTRUCT_H