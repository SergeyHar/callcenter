package com.callcenter.controller;


public interface Conroller<T> {

    T create(T t);
    T edit(T t,T newT);
    T update(T t,T newT);
    T save(T t);
    void delate (T t);


}
