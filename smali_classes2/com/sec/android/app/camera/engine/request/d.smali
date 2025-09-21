.class public final synthetic Lcom/sec/android/app/camera/engine/request/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/engine/request/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/request/d;

    invoke-direct {v0}, Lcom/sec/android/app/camera/engine/request/d;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/request/d;->a:Lcom/sec/android/app/camera/engine/request/d;

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

    check-cast p1, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCancelled()V

    return-void
.end method
