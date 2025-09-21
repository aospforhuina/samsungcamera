.class public final synthetic Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/b;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/b;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/b;->a:Lcom/samsung/android/camera/core2/node/humanTracking/arcsoft/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/node/humanTracking/HumanTrackingMode;->a()I

    move-result p0

    return p0
.end method
