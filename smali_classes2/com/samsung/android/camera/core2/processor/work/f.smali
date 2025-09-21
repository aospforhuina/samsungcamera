.class public final synthetic Lcom/samsung/android/camera/core2/processor/work/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/work/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/f;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/work/f;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/f;->a:Lcom/samsung/android/camera/core2/processor/work/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/work/WorkContinuation;

    check-cast p2, Landroidx/work/WorkContinuation;

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/processor/work/PostProcessorWorkManager;->a(Landroidx/work/WorkContinuation;Landroidx/work/WorkContinuation;)Landroidx/work/WorkContinuation;

    move-result-object p0

    return-object p0
.end method
