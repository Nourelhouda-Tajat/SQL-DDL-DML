const employés = [
  { nom: "Alice", salaire: 3000, département: "IT", années: 3 },
  { nom: "Bob", salaire: 2500, département: "HR", années: 5 },
  { nom: "Charlie", salaire: 4000, département: "IT", années: 2 }
];

// 1. Trouve tous les employés d'IT
console.log(employés.filter(emp=>emp.département==='IT'));
// 2. Calcule le salaire moyen par département

// 3. Augmente le salaire de 10% pour les anciens (>3 ans)
// const emp_ancien = employés.filter(emp=>emp.années>3);
// console.log(emp_ancien.map(emp=> [{...emp, salaire: emp.salaire*1.1}]));
// console.log(employés.map(emp=> {
//     if (emp.années>3) {
//         [{...emp, salaire: emp.salaire*1.1}];
//     }
//     else [{...emp}];
// }));
// 4. Crée un tableau des noms triés alphabétiquement
console.log(employés.sort((a,b)=>(a.nom - b.nom)));