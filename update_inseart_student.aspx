<%@ Page Title="" Language="C#" MasterPageFile="~/ProgramMasterPage.master" AutoEventWireup="true" CodeFile="update_inseart_student.aspx.cs" Inherits="examples_update_inseart_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="table/css/addons/datatables.min.css" rel="stylesheet" />
    <script src="table/js/addons/datatables.min.js"></script>
    <link href="css.css" rel="stylesheet" />
    <script src="inseart_update_student.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <div id="Loader" style ="position:fixed;height:83%;width:80%; text-align:center"><div style="display:inline-block;position:absolute;top:50%" class="loader"></div></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12" style="background-color: blue; color: white">
                تعديل الطالب
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-11" style="background-color: gray; color: white">
                معلومات أساسية
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-2">
                <div class="form-group">
                    <label for="student_id">رقم الطالب</label>
                    <input type="number" class="form-control" id="student_id" placeholder="رقم الطالب">
                </div>
            </div>
        </div>
        <div class="row">
            <div class=" col-lg-2">
                <div class="form-group">
                    <label for="first_name">الاسم الاول</label>
                    <input type="text" class="form-control" id="first_name" placeholder="الاسم الاول" />
                </div>
            </div>

            <div class=" col-lg-2">
                <div class="form-group">
                    <label for="last_name">الاسم الاخير</label>
                    <input type="text" class="form-control" id="last_name" placeholder="الاسم الاخير" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class=" col-lg-2">
                <div class="form-group">
                    <label for="national_id">رقم الهوية</label>
                    <input type="text" class="form-control" id="national_id" placeholder="رقم الهوية" />
                </div>
            </div>

            <div class=" col-lg-2">
                <div class="form-group">
                    <label for="date_of_birth">الاسم الاخير</label>
                    <input type="text" class="form-control" id="date_of_birth" placeholder="تاريخ الميلاد" />
                </div>
            </div>
            <div class=" col-lg-1">
                <div class="form-group">
                    <label for="age">العمر</label>
                    <input type="number" class="form-control" id="age" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2">
             <div id="Loader_blood" ></div> 

                <div id="blood_type_form" class="form-group">
                    <label for="blood_type">فئة الدم</label>
                    <select id="blood_type">
                        <option>غير معروف</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-11" style="background-color: gray; color: white">
                معلومات الكلية
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-2">
                <div class="form-group">
                    <label for="GPA">المعدل</label>
                    <br />
                    <input type="number" class="form-control" id="GPA" style="width: 30%; display: inline" />
                    <p style="display: inline">من 5</p>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="form-group">
                    <label for="date_time">تاريخ ووقت التسجيل</label>
                    <br />
                    <input type="text" class="form-control" id="date_time" style="width: 50%; display: inline" />
                    <input type="checkbox" style="margin-right: 3px; display: inline"><p style="display: inline; margin-right: 4px">مفعل </p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5">
                <div class="form-group">
                    <label for="notes">الملاحظات</label>
                    <textarea id="notes" class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-11" style="background-color: gray; color: white">
                مواد الطالب
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-8">
                <table id="student_matirals" class="tables table table-striped table-bordered table-sm" cellspacing="0" style="margin: auto; width: 100%">
                    <thead>
                        <tr>
                            <th>رقم المادة</th>
                            <th>اسم المادة</th>
                            <th></th>

                        </tr>
                    </thead>
                    <tbody id="student_matirals_body">
                    </tbody>

                </table>

            </div>

        </div>
        <div class="row">
            <div class="col-lg-2">
                <input type="button" class="btn btn-md" id="add_course" value="إضافة مادة" style="color: white; background-color: forestgreen" />
            </div>
        </div>
        <br />
    </div>








        <div class="modal fade" id="ModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <div class="modal-dialog" role="document" style="width: 800px">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #2f4050">
                    <h3 class="modal-title" id="exampleModalLongTitle" style="color: white">التفاصيل</h3>

                </div>
                <div class="modal-body">
                            <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <table id="courses_table" class="tables " cellspacing="0"" style="margin:auto;width:100%">
                         <thead>
                             <tr>
                            <th>رقم المادة</th>

                            <th>اسم المادة</th>
                            <th>إضافة</th>
                           
                            
                           </tr>
                         </thead>
                        <tbody id="courses_table_tbody">
                           
                        </tbody>

                    </table>
                </div>
            </div>

        </div>
                
                </div>
                <div class="modal-footer">
                    <div class="row">
                        <div class="col-lg-4">
                            <button type="button" class="btn btn-secondary" style="background-color: #6B7987; color: white" data-dismiss="modal">إغلاق</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

