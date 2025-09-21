.class public final synthetic Lcom/samsung/android/camera/core2/processor/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/o0;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/o0;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/o0;->a:Lcom/samsung/android/camera/core2/processor/o0;

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

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/RecoveryProcessManager$RecoveryProcessSequence;->c(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method
