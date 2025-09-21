.class public final synthetic Lcom/samsung/android/camera/core2/maker/fd;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/maker/fd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/maker/fd;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/maker/fd;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/fd;->a:Lcom/samsung/android/camera/core2/maker/fd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;->a()Ljava/util/EnumMap;

    move-result-object p0

    return-object p0
.end method
