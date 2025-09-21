.class public final synthetic Lcom/samsung/android/camera/core2/processor/work/worker/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/work/worker/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/work/worker/g;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/work/worker/g;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/work/worker/g;->a:Lcom/samsung/android/camera/core2/processor/work/worker/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/processor/work/worker/RecoveryDraftImageLegacyWorker$Logic;->i(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
