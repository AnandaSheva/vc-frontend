import Image from 'next/image'

const teamMembers = [
  {
    name: "Khansa Farras Callista Armandsyah",
    university: "Universitas Negeri Jakarta - Fisika",
    role: "Machine Learning Cohort",
    photo: "/assets/khansa.png"
  },
  {
    name: "Adrian Alfajri",
    university: "Universitas Trisakti - Informatika",
    role: "Machine Learning Cohort",
    photo: "/assets/adrian.png"
  },
  {
    name: "Adyatma Imam Susanto",
    university: "UPN Veteran Jawa Timur - Informatika",
    role: "Machine Learning Cohort",
    photo: "/assets/tama.png"
  },
  {
    name: "Mohamad Ifdhal Hassan Noor",
    university: "Institut Pertanian Bogor - Fisika",
    role: "Machine Learning Cohort",
    photo: "/assets/ifdhal.png"
  },
  {
    name: "Ananda Sheva Hidayat",
    university: "Universitas Lampung - Ilmu Komputer",
    role: "Cloud Computing Cohort",
    photo: "/assets/sheva.png"
  },
  {
    name: "Alverta Orlandia Prijono",
    university: "Politeknik Negeri Jakarta - Teknik Elektro",
    role: "Cloud Computing Cohort",
    photo: "/assets/ola.png"
  },
]

export default function About() {
  return (
    <div className="py-20 px-4">
      <div className="max-w-6xl mx-auto">
        <h1 className="text-4xl font-bold text-center mb-12" style={{ marginTop: '50px' }}>About Us</h1>
        <p className="text-center mb-12">
          This project is a vehicle counter application developed by a team of students from various universities. 
          The application uses machine learning and cloud computing technologies to accurately count and track vehicles 
          in real-time. The project aims to provide a reliable solution for traffic management and data analysis.
        </p>
        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          {teamMembers.map((member, index) => (
            <div key={index} className="bg-gray-100 p-6 rounded-lg">
              <div className="w-20 h-20 rounded-full mb-4 overflow-hidden">
                <Image src={member.photo} alt={member.name} width={80} height={80} />
              </div>
              <h2 className="text-xl font-bold mb-2">{member.name}</h2>
              <p className="text-gray-600 mb-2">{member.university}</p>
              <p className="text-gray-600">{member.role}</p>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}