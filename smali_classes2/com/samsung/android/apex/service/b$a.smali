.class public abstract Lcom/samsung/android/apex/service/b$a;
.super Landroid/os/Binder;
.source "IMotionPhotoComposer.java"

# interfaces
.implements Lcom/samsung/android/apex/service/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/service/b$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/samsung/android/apex/service/b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.apex.service.IMotionPhotoComposer"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/samsung/android/apex/service/b;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/samsung/android/apex/service/b;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/samsung/android/apex/service/b$a$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/service/b$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static c()Lcom/samsung/android/apex/service/b;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/service/b$a$a;->b:Lcom/samsung/android/apex/service/b;

    return-object v0
.end method
