.class public final synthetic Lcom/samsung/android/camera/core2/processor/work/worker/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/work/worker/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/worker/c;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/work/worker/c;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/c;->a:Lcom/samsung/android/camera/core2/processor/work/worker/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/work/WorkerParameters;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/work/worker/PostProcessorWorker$Logic;->b(Landroidx/work/WorkerParameters;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
