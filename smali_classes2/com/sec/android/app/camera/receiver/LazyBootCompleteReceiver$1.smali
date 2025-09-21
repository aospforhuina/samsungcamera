.class Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;
.super Ljava/lang/Object;
.source "LazyBootCompleteReceiver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;->this$0:Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LazyBootCompleteReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;->this$0:Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;

    invoke-static {p1}, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->a(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;)Landroid/hardware/SensorManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;->this$0:Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;

    invoke-static {p1}, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->a(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;->this$0:Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;

    iget-object v0, v0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;->this$0:Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->b(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;Landroid/hardware/SensorManager;)V

    :cond_0
    return-void
.end method
