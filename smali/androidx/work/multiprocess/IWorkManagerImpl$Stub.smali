.class public abstract Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImpl.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_cancelAllWork:I = 0x7

.field static final TRANSACTION_cancelAllWorkByTag:I = 0x5

.field static final TRANSACTION_cancelUniqueWork:I = 0x6

.field static final TRANSACTION_cancelWorkById:I = 0x4

.field static final TRANSACTION_enqueueContinuation:I = 0x3

.field static final TRANSACTION_enqueueWorkRequests:I = 0x1

.field static final TRANSACTION_queryWorkInfo:I = 0x8

.field static final TRANSACTION_setForegroundAsync:I = 0xa

.field static final TRANSACTION_setProgress:I = 0x9

.field static final TRANSACTION_updateUniquePeriodicWorkRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImpl;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "androidx.work.multiprocess.IWorkManagerImpl"

    if-lt p1, v0, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 3
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->setForegroundAsync([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 8
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->setProgress([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 12
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Landroidx/work/multiprocess/IWorkManagerImpl;->cancelAllWork(Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 14
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 16
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 19
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 20
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 22
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->cancelWorkById(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 23
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 25
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 26
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 29
    invoke-interface {p0, p1, p3, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->updateUniquePeriodicWorkRequest(Ljava/lang/String;[BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    goto :goto_0

    .line 30
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object p2

    .line 32
    invoke-interface {p0, p1, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->enqueueWorkRequests([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    :goto_0
    return v0

    .line 33
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
