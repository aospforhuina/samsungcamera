.class Lcom/sec/android/app/camera/CameraGenericEventHandler$1;
.super Landroid/database/ContentObserver;
.source "CameraGenericEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraGenericEventHandler;-><init>(Lcom/sec/android/app/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraGenericEventHandler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraGenericEventHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/Camera;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "Ignored best photo content observer message because Camera is not running"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Engine;->isPictureSaving()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "bestphoto"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Ready to query for best photo"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->THUMBNAIL_UPDATE:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->h(Lcom/sec/android/app/camera/CameraGenericEventHandler;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Not enough space in database"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;->this$0:Lcom/sec/android/app/camera/CameraGenericEventHandler;

    invoke-static {p0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12039a

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
