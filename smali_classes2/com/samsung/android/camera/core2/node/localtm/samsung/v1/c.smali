.class public final synthetic Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/c;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/c;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/c;->a:Lcom/samsung/android/camera/core2/node/localtm/samsung/v1/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
