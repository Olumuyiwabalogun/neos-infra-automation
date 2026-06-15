# Layer 1: Pull official AWS Lambda Python environment
FROM public.ecr.aws/lambda/python:3.11

# ─── TURING REQUIREMENT: ENFORCE LINEAGE & COMPLIANCE METADATA ───
LABEL maintainer="Olumuyiwa Balogun <neos.tech>"
LABEL neos.project="secure-serverless-pipeline"
LABEL neos.tier="compute-layer"

# Set internal Python configurations for streaming cloud logs
ENV PYTHONUNBUFFERED=1

# Establish execution workspace inside the Lambda container
WORKDIR ${LAMBDA_TASK_ROOT}

# Layer 2: Isolate and cache the heavy pip dependency installation step
COPY app/requirements.txt ${LAMBDA_TASK_ROOT}/
RUN pip install --no-cache-dir -r requirements.txt

# Layer 3: Copy application source files last to safeguard layer caching rules
COPY app/ ${LAMBDA_TASK_ROOT}/

# Overwrite the command trigger to point directly to the Mangum handler inside app.py
CMD ["app.handler"]