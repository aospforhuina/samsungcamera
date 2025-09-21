.class public final synthetic Lcom/samsung/android/camera/core2/util/o0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/util/o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/util/o0;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/o0;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/util/o0;->a:Lcom/samsung/android/camera/core2/util/o0;

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

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/FileUtils;->e(Ljava/nio/file/Path;)V

    return-void
.end method
