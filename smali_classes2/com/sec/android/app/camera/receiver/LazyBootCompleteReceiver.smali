.class public Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LazyBootCompleteReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LazyBootCompleteReceiver"


# instance fields
.field mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver$1;-><init>(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;Landroid/hardware/SensorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "LazyBootCompleteReceiver"

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    .line 3
    sget-object p2, Lu3/b;->j2:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    const/4 v2, 0x3

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "sensor"

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    const v3, 0x10044

    .line 5
    invoke-virtual {p2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/receiver/LazyBootCompleteReceiver;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, p0, p2, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_0
    const-string p0, "Launch - PreloadingDefaultMaker"

    .line 7
    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    const-string p2, "PreloadingDefaultMaker"

    .line 8
    invoke-static {p2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lcom/samsung/android/camera/core2/maker/MakerFactory;->c:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {p2, v3, p1}, Lcom/samsung/android/camera/core2/maker/MakerFactory;->a(Ljava/lang/Class;Landroid/os/Handler;Landroid/content/Context;)Lcom/samsung/android/camera/core2/MakerInterface;

    .line 10
    sget-object p2, Lu3/b;->W1:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lu3/b;->V2:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "double_tab_launch"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current setting db of quick launch : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "double_tab_launch_component"

    const-string v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-ne v3, v5, :cond_5

    const-string/jumbo v3, "update setting db as default value"

    .line 14
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lu3/b;->V2:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isSoftwareNavigationBar()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lu3/b;->V2:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    :cond_5
    :goto_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    const/4 p2, 0x0

    .line 23
    invoke-static {p0, p2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 24
    :cond_6
    sget-object p0, Lu3/b;->o3:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "Enable QrTileService"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :try_start_0
    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.service.QrTileService"

    invoke-direct {p0, p2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p2

    if-eq p2, v1, :cond_7

    .line 29
    invoke-virtual {p1, p0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "QrTileService : Component not found"

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method
