xquery version "1.0";

(:1:)
(:doc("courses.xml")//Course[max(doc("courses.xml")//Course/@Enrollment) eq xs:int(@Enrollment)]/Title:)

(:2:)
(:for $course in doc("courses.xml")//Course:)
(:where $course/Title = $course/following::*/Title or $course/Title = $course/preceding::*/Title:)
(:return data($course/@Number):)

(:3:)
(:count(distinct-values(doc("courses.xml")//Course)) - count(distinct-values(doc("courses.xml")//Course/Instructors[Lecturer])):)

(:4:)
(:doc("courses.xml")//Department//Course/Instructors/Professor[Last_Name = ../../../Chair/Professor/Last_Name]/../../Title:)

(:5:)
(:for $l1 in doc("courses.xml")//Course/Instructors//Professor[Last_Name = 'Ng']/..:)
(:where some $fn in $l1 satisfies not($fn/Professor[Last_Name = 'Thrun']):)
(:return $l1/../Title:)

(:6:)
(:for $prereq in data(doc("courses.xml")//Course/Instructors/Professor[Last_Name = 'Roberts']/../../@Number):)
(:for $courses in data(doc("courses.xml")//Course/Prerequisites[Prereq = $prereq]/../@Number):)
(:return $courses:)

(:7:)
<Summary>
{
for $course in doc("courses.xml" )//Department[@Code = 'CS']//Course
where not(empty($course/@Enrollment))
order by xs:int($course/@Enrollment) ascending
return
    <Course Enrollment="{data($course/@Enrollment)}">
        {$course/Title}
    </Course>
}
</Summary>

(:8:)
