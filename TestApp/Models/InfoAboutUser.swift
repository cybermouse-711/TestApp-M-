//
//  InfoAboutUser.swift
//  TestApp
//
//  Created by Елизавета Медведева on 22.05.2023.
//


struct User {
    let loginUser: String
    let passwordUser: String
    let person: Person
    
    static func showsDataUser() -> User {
        User(
            loginUser: "Liza",
             passwordUser: "123456",
             person: Person(
                name: "Елизавета",
                surname: "Медведева",
                company: "Forma",
                job: "Инженер",
                info: "Я проживаю в Москве. Работаю инженером в жилищном строительстве. Моя компания реализует объекты, которые вписываются в городской ландшафт и не загрязняют окружающую среду. Также у меня есть собака породы Немецкий пинчер. А в свободное от работы время, я люблю гулять в парках и читать научпоп о космосе."
             )
        )
    }
}

struct Person {
    
    let name: String
    let surname: String
    let company: String
    let job: String
    let info: String
 }


