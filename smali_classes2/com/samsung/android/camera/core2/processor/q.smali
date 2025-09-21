.class public final synthetic Lcom/samsung/android/camera/core2/processor/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/q;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/q;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/q;->a:Lcom/samsung/android/camera/core2/processor/q;

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

    check-cast p1, Lcom/samsung/android/camera/core2/util/ImageInfo;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/processor/PostProcessRequest;->e(Lcom/samsung/android/camera/core2/util/ImageInfo;)V

    return-void
.end method
