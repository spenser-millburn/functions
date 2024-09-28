function create_pyproject_toml
    set -l project_name
    set -l description
    set -l dependencies

    read -P "Enter project name: " project_name
    read -P "Enter project description: " description
    read -P "Enter project dependencies (comma-separated): " dependencies

    echo "[tool.poetry]" > pyproject.toml
    echo "name = \"$project_name\"" >> pyproject.toml
    echo "version = \"1.0.0\"" >> pyproject.toml
    echo "description = \"$description\"" >> pyproject.toml
    echo "authors = [\"Spenser Millburn <spenser@example.com>\"]" >> pyproject.toml
    echo "license = \"MIT\"" >> pyproject.toml

    echo "[tool.poetry.dependencies]" >> pyproject.toml
    for dep in (string split ',' $dependencies)
        echo "$dep = \"*\"" >> pyproject.toml
    end

    echo "[build-system]" >> pyproject.toml
    echo "requires = [\"poetry-core>=1.0.0\"]" >> pyproject.toml
    echo "build-backend = \"poetry.core.masonry.api\"" >> pyproject.toml

    echo "pyproject.toml created successfully."
end
