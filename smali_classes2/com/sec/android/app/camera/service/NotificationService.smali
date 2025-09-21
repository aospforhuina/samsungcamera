.class public Lcom/sec/android/app/camera/service/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/service/NotificationService$LocalBinder;,
        Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mNotificationServiceConnection:Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mBinder:Landroid/os/IBinder;

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;-><init>(Lcom/sec/android/app/camera/service/b;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/service/NotificationService;->mNotificationServiceConnection:Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;

    return-void
.end method


# virtual methods
.method public bindNotificationService(Landroid/content/Context;)V
    .locals 3

    const-string v0, "NotificationService"

    const-string v1, "bindNotificationService"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/camera/service/NotificationService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mNotificationServiceConnection:Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "bindNotificationService : can\'t bind service"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p0, "notification"

    .line 4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 5
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f1202db

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const-string v2, "saving_notification_channel"

    invoke-direct {v0, v2, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public hideSavingNotification()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideSavingNotification : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NotificationService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mNotificationServiceConnection:Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;->getService()Lcom/sec/android/app/camera/service/NotificationService;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v2, "stopForeground failed : %s"

    .line 5
    invoke-static {v4, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "stopForeground failed : service is null"

    .line 6
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSavingNotification : End["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v0

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "NotificationService"

    const-string v0, "onBind"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/service/NotificationService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/service/NotificationService$LocalBinder;-><init>(Lcom/sec/android/app/camera/service/NotificationService;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mBinder:Landroid/os/IBinder;

    const-string p0, "NotificationService"

    const-string v0, "onCreate"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "NotificationService"

    const-string v1, "onDestroy"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public showSavingNotification(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture - ShowSavingNotification : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NotificationService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mNotificationServiceConnection:Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;->getService()Lcom/sec/android/app/camera/service/NotificationService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "saving_notification_channel"

    invoke-direct {v2, p1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f08086e

    .line 5
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v5, 0x7f120429

    .line 6
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v2, "progress"

    .line 7
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 v5, 0xa

    .line 12
    iput v5, p1, Landroid/app/Notification;->semPriority:I

    .line 13
    :try_start_0
    invoke-virtual {p0, v2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "startForegroundService failed : %s"

    .line 14
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "startForegroundService failed : service is null"

    .line 15
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Capture - ShowSavingNotification : End["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "NotificationService"

    const-string/jumbo v1, "stopService"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->stopService(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public unbindNotificationService(Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/service/NotificationService;->mNotificationServiceConnection:Lcom/sec/android/app/camera/service/NotificationService$NotificationServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NotificationService"

    const-string/jumbo p1, "unbindNotificationService : service is not connected."

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
