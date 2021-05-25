//
//  main.swift
//  Swift.BTVN4
//
//  Created by Ngô Minh Tuấn on 25/05/2021.
//

import Foundation

//1. Liệt kê tất cả các ước số của một số tự nhiên n.

func uocSo(a: Int) {
    for i in 1...a {
        if a % i == 0 {
            print(i)
        }
    }

}

uocSo(a: 21)

//2, In ra họ và tên của một họ tên cho trước.
//(Ví dụ Phan Thanh Hoa -> In ra:  Phan Hoa)

func name(a: String) {
    let fullName = a.split(separator: " ")
    if fullName.count <= 2 {
        print(a)
    } else {
        print("\(fullName[0]) \(fullName[fullName.count - 1])")
    }
    
}
name(a: "Ngô Minh Tuấn")


//3, Viết hàm cho phép người dùng chọn đáp án
//Question: Đâu không phải là một ngôn ngữ lập trình?
//a - Golang
//b - Swift
//c - Ruby
//d - Daily
//Cho người dùng chọn a, b, c, d để trả lời!
//Yêu cầu người dùng chọn lại đáp án nếu input không đúng, (không đúng nếu input khác a, b, c, d)
//In ra trả lời sai nếu đáp án không đúng
//In ra trả lời đúng nếu đáp án đúng

func question(answer: String) {
    if answer == "a" || answer == "b" || answer == "c" {
        print("Đáp án sai")
    } else if answer == "d" {
        print("Đáp án đúng")
    } else {
        print("Đáp án không hợp lệ. Nhâp lại đáp án")
    }
}
question(answer: "a")



//4, Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)

func hoanHao(a: Int) {
    if a > 32767 || a <= 0 {
        print("không hợp lệ")
    } else {
        for i in 1...a {
            var sumUocSo = 0
            for j in 1...i {
                if i % j == 0 {
                    sumUocSo += j
                    if sumUocSo == i*2 {
                        print(i)
                    }
                }
            }
        }
    }

}
hoanHao(a: 1000)

