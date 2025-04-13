//
//  User.swift
//  LoginPage
//
//  Created by Олеся Берсенёва on 11.04.2025.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let depatriment: String
    let jobTitle: String
    let photo: String
    let biography: String
    
    static func getPerson() -> Person {
        Person(
            name: "Sergey",
            surname: "Bersenev",
            company: "GE Healthcare",
            depatriment: "Service",
            jobTitle: "Advanced Engineer",
            photo: "Sergey Bersenev",
            biography: " Меня зовут Сергей, мне 39 лет, родился и вырос в городе Новосибирске. В 2009 году закончил авиационный факультет Новосибирского государственного технического университета. Долгое время работал в сфере ремонта и обслуживания гражданской авиации. Последние 10 лет работаю в сфере обслуживания медицинского оборудования, в данный момент занимаю должность старшего инженера по обслуживанию эндоваскулярных операционных, рентген установок, маммографических систем и аппаратов, оборудования взрослой и детской реанимации. Являюсь главой семейсва - женат, есть дочь. Последние семь лет увлекаюсь спортивной стрельбой, являюсь членом Федерации Практической стрельбы РФ, имею 1й спортивный разряд по ружью. Также являюсь спортивным судьей 3й категории по Практической стрельбе.")
    }
}

