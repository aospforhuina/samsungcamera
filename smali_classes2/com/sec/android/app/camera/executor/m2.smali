.class public final synthetic Lcom/sec/android/app/camera/executor/m2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl$ActionStateChecker;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/executor/m2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/executor/m2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/executor/m2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/executor/m2;->a:Lcom/sec/android/app/camera/executor/m2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final update(Lcom/sec/android/app/camera/interfaces/CameraContext;I)I
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/executor/NlgErrorHelper;->checkVideoAutoFraming(Lcom/sec/android/app/camera/interfaces/CameraContext;I)I

    move-result p0

    return p0
.end method
