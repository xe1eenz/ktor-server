package com.example

import io.ktor.server.application.Application

fun Application.rootModule() {
    configureResources()
    configureHttp()
    configureSerialization()
    configureRouting()
}
