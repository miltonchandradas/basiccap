using demo from '../db/schema';

@path : 'service/demo'
service FacultyService @(requires : 'authenticated-user') {

    entity Departments @(restrict : [{
        grant : ['*'],
        to    : ['Admin']
    }]) as select from demo.Departments;

    entity Employees @(restrict : [{
        grant : ['*'],
        to    : ['Admin']
    }]) as select from demo.Employees;

}
