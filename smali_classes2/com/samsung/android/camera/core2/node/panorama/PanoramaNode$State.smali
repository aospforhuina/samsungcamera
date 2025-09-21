.class final enum Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;
.super Ljava/lang/Enum;
.source "PanoramaNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State$Rule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

.field public static final enum b:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

.field public static final enum c:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

.field public static final enum d:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

.field public static final enum f:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

.field private static final synthetic g:[Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->a:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    const-string v3, "INITIALIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->b:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    const-string v5, "CAPTURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->c:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    .line 4
    new-instance v5, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    const-string v7, "WAIT_CAPTURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->d:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    .line 5
    new-instance v7, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    const-string v9, "STOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->f:Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->g:[Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->g:[Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;

    return-object v0
.end method


# virtual methods
.method public varargs a([Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;)V
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eq p0, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v3, p1

    const-string p0, "checkStateNot fail - current state %s is one of %s"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public b(Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/camera/core2/node/panorama/PanoramaNode$State$Rule;->a()Ljava/util/EnumMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const-string p0, "checkTransitState fail - invalid state %s -> %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/InvalidOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
