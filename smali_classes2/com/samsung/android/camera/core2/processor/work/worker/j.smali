.class public final synthetic Lcom/samsung/android/camera/core2/processor/work/worker/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/work/worker/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/worker/j;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/work/worker/j;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/j;->a:Lcom/samsung/android/camera/core2/processor/work/worker/j;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->g(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
