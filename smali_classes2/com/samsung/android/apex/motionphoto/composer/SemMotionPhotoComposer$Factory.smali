.class public Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Factory;
.super Ljava/lang/Object;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidLocalClient(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidRemoteClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_1
    sget-object p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no suitable composer for : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
    .locals 2

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidLocalClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/apex/motionphoto/common/SemApexUtils;->isValidRemoteClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_1
    sget-object p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no suitable composer for : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
