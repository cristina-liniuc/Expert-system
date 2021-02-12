FROM swipl
COPY . /expert_system
CMD ["swipl", "/expert_system/shell.pl"]



