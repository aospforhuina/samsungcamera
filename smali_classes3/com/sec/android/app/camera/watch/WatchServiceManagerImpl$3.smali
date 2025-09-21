.class Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;
.super Ljava/util/EnumMap;
.source "WatchServiceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
        "Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$EventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/n0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/n0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_TERMINATED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/r0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/r0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->THUMBNAIL_UPDATE:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/k0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/k0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_SETTING_ACTIVITY_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/l0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/l0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_RESUMED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/p0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/p0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/i0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/i0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_PAUSED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/q0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/q0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STOPPED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/m0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/m0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_FACING_CHANGED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/j0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/j0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->START_PREVIEW_COMPLETED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-instance p2, Lcom/sec/android/app/camera/watch/o0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/o0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$5()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$8()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$2()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$3()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$7()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$0()V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$9()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$4()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$6()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->y(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->C(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->K(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->A(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->F(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$5()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->G(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$6()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->E(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$7()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->H(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->N(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method private synthetic lambda$new$9()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->this$0:Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->O(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;->lambda$new$1()V

    return-void
.end method
