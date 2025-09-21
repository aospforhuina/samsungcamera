.class final enum Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
.super Ljava/lang/Enum;
.source "AgifNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/AgifNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/core2/node/AgifNode$STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

.field public static final enum b:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

.field public static final enum c:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

.field private static final synthetic d:[Lcom/samsung/android/camera/core2/node/AgifNode$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->a:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    .line 2
    new-instance v1, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    const-string v3, "CAPTURE_PREPARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->b:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    .line 3
    new-instance v3, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    const-string v5, "CAPTURING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->c:Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->d:[Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/camera/core2/node/AgifNode$STATE;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->d:[Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/core2/node/AgifNode$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/core2/node/AgifNode$STATE;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/camera/core2/node/AgifNode$STATE;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
