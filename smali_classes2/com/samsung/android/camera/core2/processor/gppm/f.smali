.class public final synthetic Lcom/samsung/android/camera/core2/processor/gppm/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/processor/gppm/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/processor/gppm/f;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/processor/gppm/f;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/processor/gppm/f;->a:Lcom/samsung/android/camera/core2/processor/gppm/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
