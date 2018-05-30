from django.contrib import admin

# Register your models here.
from django.contrib import admin
from eh.models import member

class memberAdmin(admin.ModelAdmin):
    list_display = ['mem_ID', 'mem_Name','mem_Department','mem_Major','mem_Class', 'mem_Phonenumber' ]

admin.site.register(member, memberAdmin)

