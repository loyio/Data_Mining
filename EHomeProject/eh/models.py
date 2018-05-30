from django.db import models

# Create your models here.
class member(models.Model):
    mem_ID = models.IntegerField(max_length=11, primary_key=True,verbose_name="编号")
    mem_Name = models.TextField(max_length=10, verbose_name="姓名")
    mem_Class = models.IntegerField(max_length=5,null=True, verbose_name="班级")
    mem_Studentid = models.IntegerField(max_length=11,null=True, verbose_name="学号")
    mem_Department = models.TextField(max_length=10,null=True, verbose_name="学院")
    mem_Major = models.TextField(max_length=20,null=True, verbose_name="专业")
    mem_Dormitory = models.IntegerField(max_length=4,null=True, verbose_name="楼栋")
    mem_Room = models.IntegerField(max_length=4,null=True, verbose_name="寝室号")
    mem_Teacher = models.TextField(max_length=10,null=True, verbose_name="辅导员")
    mem_Phonenumber = models.IntegerField(max_length=20,null=True, verbose_name="手机号")
    mem_Gender = models.TextField(max_length=2,null=True, verbose_name="性别")
    mem_Qqnumber = models.IntegerField(max_length=11,null=True, verbose_name="QQ号")
    def __str__(self):
        return "%d"%self.pk





