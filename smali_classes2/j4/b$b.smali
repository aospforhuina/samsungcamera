.class public final enum Lj4/b$b;
.super Ljava/lang/Enum;
.source "GlobalPostProcProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj4/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lj4/b$b;

.field public static final enum c:Lj4/b$b;

.field public static final enum d:Lj4/b$b;

.field public static final enum f:Lj4/b$b;

.field public static final enum g:Lj4/b$b;

.field public static final enum k:Lj4/b$b;

.field public static final enum l:Lj4/b$b;

.field private static final synthetic m:[Lj4/b$b;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lj4/b$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lj4/b$b;->b:Lj4/b$b;

    .line 2
    new-instance v1, Lj4/b$b;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lj4/b$b;->c:Lj4/b$b;

    .line 3
    new-instance v3, Lj4/b$b;

    const-string v5, "STARTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lj4/b$b;->d:Lj4/b$b;

    .line 4
    new-instance v5, Lj4/b$b;

    const-string v7, "STARTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lj4/b$b;->f:Lj4/b$b;

    .line 5
    new-instance v7, Lj4/b$b;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lj4/b$b;->g:Lj4/b$b;

    .line 6
    new-instance v9, Lj4/b$b;

    const-string v11, "STOPPING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lj4/b$b;->k:Lj4/b$b;

    .line 7
    new-instance v11, Lj4/b$b;

    const-string v13, "STOPPED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lj4/b$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lj4/b$b;->l:Lj4/b$b;

    const/4 v13, 0x7

    new-array v13, v13, [Lj4/b$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lj4/b$b;->m:[Lj4/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lj4/b$b;->a:I

    return-void
.end method

.method public static a(I)Lj4/b$b;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lj4/b$b;->l:Lj4/b$b;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lj4/b$b;->k:Lj4/b$b;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lj4/b$b;->g:Lj4/b$b;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lj4/b$b;->f:Lj4/b$b;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lj4/b$b;->d:Lj4/b$b;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lj4/b$b;->c:Lj4/b$b;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lj4/b$b;->b:Lj4/b$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lj4/b$b;
    .locals 1

    const-class v0, Lj4/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj4/b$b;

    return-object p0
.end method

.method public static values()[Lj4/b$b;
    .locals 1

    sget-object v0, Lj4/b$b;->m:[Lj4/b$b;

    invoke-virtual {v0}, [Lj4/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj4/b$b;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 0

    iget p0, p0, Lj4/b$b;->a:I

    return p0
.end method
