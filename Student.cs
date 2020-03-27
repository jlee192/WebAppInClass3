using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppInClass3
{
    public class Student
    {
        //public string SIN { get; set; }
        public int StudentID { get; set; }
        public string Name { get; set; }
        public double Credits { get; set; }
        public string EmergencyPhoneNumber { get; set; }
        //public int Age { get; set; }
        //public double Wage { get; set; }
        //public string Phone { get; set; }
        public Student()
        {

        }
        public Student(int studentid,
                        string name,
                        double credits,
                        string emergencyphonenumber)
        {
            StudentID = studentid;
            Name = name;
            Credits = credits;
            EmergencyPhoneNumber = emergencyphonenumber;
        }
    }
}