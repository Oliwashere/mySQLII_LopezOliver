#########################
### Dia 1 - CONSULTAS ###
#########################

-- 1. Número de pacientes atendidos por cada médico
SELECT m.nombre, COUNT(p.id) AS numero_pacientes
FROM Medico m
LEFT JOIN Paciente p ON m.id = p.medico_id
GROUP BY m.id, m.nombre;

-- 2. Total de días de vacaciones planificadas y disfrutadas por cada empleado
SELECT e.nombre, SUM(DATEDIFF(v.fecha_fin, v.fecha_inicio) + 1) AS total_dias_vacaciones
FROM Empleado e
JOIN Vacaciones v ON e.id = v.empleado_id
GROUP BY e.id, e.nombre;

-- 3. Médicos con mayor cantidad de horas de consulta en la semana
SELECT m.nombre, SUM(TIMESTAMPDIFF(HOUR, hc.hora_inicio, hc.hora_fin)) AS total_horas_consulta
FROM Medico m
JOIN HorarioConsulta hc ON m.id = hc.medico_id
GROUP BY m.id, m.nombre
ORDER BY total_horas_consulta DESC;

-- 4. Número de sustituciones realizadas por cada médico sustituto
SELECT m.nombre, COUNT(s.id) AS numero_sustituciones
FROM Medico m
JOIN Sustitucion s ON m.id = s.medico_id
WHERE m.tipo = 'sustituto'
GROUP BY m.id, m.nombre;

-- 5. Número de médicos que están actualmente en sustitución
SELECT COUNT(DISTINCT m.id) AS numero_medicos_en_sustitucion
FROM Medico m
JOIN Sustitucion s ON m.id = s.medico_id
WHERE m.tipo = 'sustituto' AND s.fecha_baja IS NULL;

-- 6. Horas totales de consulta por médico por día de la semana
SELECT m.nombre, hc.dia_semana, SUM(TIMESTAMPDIFF(HOUR, hc.hora_inicio, hc.hora_fin)) AS total_horas_consulta
FROM Medico m
JOIN HorarioConsulta hc ON m.id = hc.medico_id
GROUP BY m.id, m.nombre, hc.dia_semana;

-- 7. Médico con mayor cantidad de pacientes asignados
SELECT m.nombre, COUNT(p.id) AS numero_pacientes
FROM Medico m
LEFT JOIN Paciente p ON m.id = p.medico_id
GROUP BY m.id, m.nombre
ORDER BY numero_pacientes DESC
LIMIT 1;

-- 8. Empleados con más de 10 días de vacaciones disfrutadas
SELECT e.nombre, SUM(DATEDIFF(v.fecha_fin, v.fecha_inicio) + 1) AS total_dias_vacaciones
FROM Empleado e
JOIN Vacaciones v ON e.id = v.empleado_id
GROUP BY e.id, e.nombre
HAVING total_dias_vacaciones > 10;

-- 9. Médicos que actualmente están realizando una sustitución
SELECT DISTINCT m.nombre
FROM Medico m
JOIN Sustitucion s ON m.id = s.medico_id
WHERE m.tipo = 'sustituto' AND (s.fecha_baja IS NULL OR s.fecha_baja > CURDATE());

-- 10. Promedio de horas de consulta por médico por día de la semana
SELECT m.nombre, hc.dia_semana, AVG(TIMESTAMPDIFF(HOUR, hc.hora_inicio, hc.hora_fin)) AS promedio_horas_consulta
FROM Medico m
JOIN HorarioConsulta hc ON m.id = hc.medico_id
GROUP BY m.id, m.nombre, hc.dia_semana;

## Desarrollado por Oliver Lopez / ID 1097911715