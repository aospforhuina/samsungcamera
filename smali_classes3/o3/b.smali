.class public final synthetic Lo3/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lo3/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/b;

    invoke-direct {v0}, Lo3/b;-><init>()V

    sput-object v0, Lo3/b;->a:Lo3/b;

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

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;->b(Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method
