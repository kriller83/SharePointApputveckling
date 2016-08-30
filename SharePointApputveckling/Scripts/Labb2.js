//var Labb2 = Labb2 || {};
//Labb2.Employees = {
//        Employees: new Array("Kristian", "Calle", "Andreas"),
//        show: function() {
//            for (var i = 0; i < Labb2.employees.Employees.length; i++) {
//                document.getElementById("demo").innerHTML += "<br> />" + Labb2.employees.Employees[i];
//            }
//            alert(Employees);
//        }
//    }


//        Labb2.Cars = {
//            Cars: new Array("Saab", "Volvo", "BMW"),
//            show: function() {
//                for (var i = 0; i < Labb2.cars.Car.length; i++) {
//                    document.getElementById("demo").innerHTML += "<br> />" + Labb2.cars.Car[i];
//                }
//                alert(Car);
//            }
//        }


        var labb2 = (function () {
            function employee(name, hasCar) {
                this.name = name;
                this.hasCar = hasCar;
            };

            function car(name) {
                this.name = name;
            }

            var _employees = [
                new employee('Kristian', true),
                new employee('Carl', false),
                new employee('Erik', true),
                new employee('Emma', false)
            ];

            var _cars = [
                new car('Volvo s40'),
                new car('Opel Vectra'),
                new car('Mazda 323')
            ];

            return {
                HR: {
                    employees: _employees
                },
                Cars: {
                    cars: _cars
                }
            };
        })(this);

        // Logik
        $("#bc .btn").click(function () {
            console.log('Klick');

            switch (this.id) {
                case "btnEmployees":
                    printNames(labb2.HR.employees);
                    break;
                case "btnCars":
                    printNames(labb2.Cars.cars);
                    break;
                case "btnHasCar":
                    PrintCarUsers(labb2.HR.employees);
                    break;
                default:
                    $('#mainContainer').html("");
                    break;
            }
        });

        function printNames(list) {
            console.log('Print');

            list.forEach(function (element) {
                $('#mainContainer').prepend(element.name + "<br />");
            });
        }

        function PrintCarUsers(employees) {
            //console.log('Ahhh ', getEmployeesWithCar(employees));
            var list = getEmployeesWithCar(employees);
            console.log('List post ' + list);
            //printNames(list);
        }

        function getEmployeesWithCar(employees) {
            console.log('eWC ', employees);

            var list = [];
            employees.forEach(function (value) {
                console.log(value);
                EmployeeHasCar(value)
                    .then(function () {
                        list.push(value);
                        printNames([value]);
                    },
                        function () {
                            console.log(value.name + " has no car.");
                        });
            });

            console.log('List pre ', list);
            return list;
        };

        function EmployeeHasCar(employee) {
            var dfd = $.Deferred();

            if (employee.hasCar) {
                dfd.resolve();
            }
            else {
                dfd.reject();
            }

            return dfd.promise();
        }
    

