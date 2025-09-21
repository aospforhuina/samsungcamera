.class final enum Lq0/h$a;
.super Ljava/lang/Enum;
.source "SingleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq0/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq0/h$a;

.field public static final enum b:Lq0/h$a;

.field public static final enum c:Lq0/h$a;

.field public static final enum d:Lq0/h$a;

.field public static final enum f:Lq0/h$a;

.field public static final enum g:Lq0/h$a;

.field private static final synthetic k:[Lq0/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lq0/h$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq0/h$a;->a:Lq0/h$a;

    .line 2
    new-instance v1, Lq0/h$a;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq0/h$a;->b:Lq0/h$a;

    .line 3
    new-instance v3, Lq0/h$a;

    const-string v5, "WAITING_FOR_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lq0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq0/h$a;->c:Lq0/h$a;

    .line 4
    new-instance v5, Lq0/h$a;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lq0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lq0/h$a;->d:Lq0/h$a;

    .line 5
    new-instance v7, Lq0/h$a;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lq0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lq0/h$a;->f:Lq0/h$a;

    .line 6
    new-instance v9, Lq0/h$a;

    const-string v11, "CLEARED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lq0/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lq0/h$a;->g:Lq0/h$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lq0/h$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lq0/h$a;->k:[Lq0/h$a;

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

.method public static valueOf(Ljava/lang/String;)Lq0/h$a;
    .locals 1

    const-class v0, Lq0/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq0/h$a;

    return-object p0
.end method

.method public static values()[Lq0/h$a;
    .locals 1

    sget-object v0, Lq0/h$a;->k:[Lq0/h$a;

    invoke-virtual {v0}, [Lq0/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq0/h$a;

    return-object v0
.end method
