Comandos más útiles de Terraform:

---

# 📦 Terraform - Comandos Útiles

Este documento recopila los comandos más utilizados en Terraform para gestionar infraestructura como código (IaC). Puedes utilizarlos como guía rápida durante el desarrollo y despliegue de tus configuraciones.

---

## ⚙️ `terraform init`

Inicializa un nuevo proyecto de Terraform o configura un proyecto existente. Descarga los proveedores necesarios y prepara el entorno de trabajo.

```bash
terraform init
```

📌 _Se recomienda ejecutarlo siempre que se agreguen o cambien proveedores._

---

## 📐 `terraform validate`

Verifica que los archivos de configuración `.tf` tengan una sintaxis correcta y una estructura válida.

```bash
terraform validate
```

✅ _No realiza conexiones a la nube ni verifica accesos, solo evalúa la validez del código local._

---

## 🧠 `terraform plan`

Muestra un plan de ejecución detallado. Indica qué acciones se realizarán (crear, modificar o destruir recursos) sin hacer cambios reales.

```bash
terraform plan
```

📝 _Ideal para revisar antes de aplicar cambios a la infraestructura._

---

## 🚀 `terraform apply`

Ejecuta el plan de Terraform y aplica los cambios a la infraestructura.

```bash
terraform apply
```

Puedes aplicar sin confirmación con:

```bash
terraform apply -auto-approve
```

⚠️ _Ejecuta solo después de validar y revisar el plan._

---

## 🧹 `terraform fmt --recursive`

Formatea todos los archivos `.tf` de tu proyecto para mantener una sintaxis limpia y consistente.

```bash
terraform fmt --recursive
```

🧼 _Muy útil para mantener buenas prácticas en colaboración en equipo._

---

## ✅ Recomendación de uso en flujo de trabajo

1. `terraform fmt --recursive` → Formatear código.
2. `terraform init` → Inicializar entorno.
3. `terraform validate` → Validar sintaxis y estructura.
4. `terraform plan` → Revisar cambios.
5. `terraform apply` → Aplicar cambios.

---
