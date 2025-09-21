.class public final synthetic Lcom/sec/android/app/camera/executor/e2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/executor/e2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/executor/e2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/executor/e2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/executor/e2;->a:Lcom/sec/android/app/camera/executor/e2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p1}, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;->w(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    return-void
.end method
