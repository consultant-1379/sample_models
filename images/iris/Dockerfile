FROM python:3.8-slim
WORKDIR /app
ARG SELDON_CORE_VERSION
# Install python packages
COPY requirements.txt ./
RUN echo -n "\nseldon-core==${SELDON_CORE_VERSION}" >> requirements.txt && cat requirements.txt && \
pip install -r requirements.txt

# Copy source code
COPY . .

# Port for GRPC
EXPOSE 5000
# Port for REST
EXPOSE 9000

# Define environment variables
ENV MODEL_NAME IrisClassifier
ENV SERVICE_TYPE MODEL

# Changing folder to default user
RUN chown -R 8888 /app

CMD exec seldon-core-microservice $MODEL_NAME --service-type $SERVICE_TYPE