namespace demo;

using {cuid} from '@sap/cds/common';

entity Employees : cuid {
    name       : String;
    age        : Integer;
    department : Association to Departments;
}

entity Departments : cuid {
    name      : String;
    employees : Association to many Employees
                    on employees.department = $self;
}
