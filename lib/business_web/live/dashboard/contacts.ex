defmodule BusinessWeb.Dashboard.Contacts do
  use BusinessWeb, :live_view

  @contacts [
    %{id: 1, full_name: "Dr. Alice Johnson", position: "Software Engineer"},
    %{id: 2, full_name: "Mr. Bob Smith", position: "Product Manager"},
    %{id: 3, full_name: "Ms. Charlie Brown", position: "UX/UI Designer"},
    %{id: 4, full_name: "Prof. David Lee", position: "Data Scientist"},
    %{id: 5, full_name: "Mrs. Emily Wilson", position: "Marketing Manager"},
    %{id: 6, full_name: "Dr. Frank Thomas", position: "CTO"},
    %{id: 7, full_name: "Mr. Grace Harris", position: "System Administrator"},
    %{id: 8, full_name: "Ms. Henry Walker", position: "Full Stack Developer"},
    %{id: 9, full_name: "Prof. Isabella King", position: "Chief Technology Officer (CTO)"},
    %{id: 10, full_name: "Mrs. Jacob Robinson", position: "Business Analyst"},
    %{id: 11, full_name: "Dr. Katherine Young", position: "Chief Information Officer (CIO)"},
    %{id: 12, full_name: "Mr. Liam Allen", position: "Software Developer"},
    %{id: 13, full_name: "Ms. Noah Scott", position: "Web Developer"},
    %{id: 14, full_name: "Prof. Olivia Daniels", position: "VP of Engineering"},
    %{id: 15, full_name: "Mrs. William Miller", position: "IT Support Specialist"},
    %{id: 16, full_name: "Dr. Ava Johnson", position: "Security Engineer"},
    %{id: 17, full_name: "Mr. Benjamin Williams", position: "Network Engineer"},
    %{id: 18, full_name: "Ms. Charlotte Brown", position: "Front-End Developer"},
    %{id: 19, full_name: "Prof. Elijah Davis", position: "Machine Learning Engineer"},
    %{id: 20, full_name: "Mrs. Evelyn Miller", position: "QA Tester"},
    %{id: 21, full_name: "Dr. Felix Clark", position: "DevOps Engineer"},
    %{id: 22, full_name: "Mr. Fiona Wright", position: "Software Architect"},
    %{id: 23, full_name: "Ms. Gabriel Moore", position: "Technical Writer"},
    %{id: 24, full_name: "Prof. Georgia Allen", position: "Cloud Architect"},
    %{id: 25, full_name: "Mrs. Greyson Lee", position: "Business Development Manager"},
    %{id: 26, full_name: "Dr. Hailey Nelson", position: "Data Analyst"},
    %{id: 27, full_name: "Mr. Isabel Baker", position: "Mobile Developer"},
    %{id: 28, full_name: "Ms. Jackson Nelson", position: "IT Project Manager"},
    %{id: 29, full_name: "Prof. James Campbell", position: "Full Stack Developer"},
    %{id: 30, full_name: "Mrs. Jennifer Mitchell", position: "Software Development Lead"},
    %{id: 31, full_name: "Dr. John Rodriguez", position: "Back-End Developer"},
    %{id: 32, full_name: "Mr. Joseph Taylor", position: "Help Desk Technician"},
    %{id: 34, full_name: "Prof. Julian Anderson", position: "Software Engineer Lead"},
    %{id: 35, full_name: "Mrs. Justin Thompson", position: "Database Administrator"},
    %{id: 36, full_name: "Dr. Katherine Walker", position: "Network Security Engineer"},
    %{id: 37, full_name: "Mr. Layla Wright", position: "Front-End Developer"},
    %{id: 38, full_name: "Ms. Liam Henderson", position: "QA Analyst"}
  ]

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:total_contacts, 200)
      |> assign(:contacts_displayed, 50)
      |> assign(:contacts, Enum.take(@contacts, 20))

    {:ok, socket}
  end
end
