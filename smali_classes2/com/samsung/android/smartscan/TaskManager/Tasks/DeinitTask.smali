.class public Lcom/samsung/android/smartscan/TaskManager/Tasks/DeinitTask;
.super Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;
.source "DeinitTask.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Deinit:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    iput-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->taskType:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    return-void
.end method


# virtual methods
.method public executeTask()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->taskListener:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->taskType:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    invoke-interface {v0, p0}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;->onExecuteTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
