.class Lj4/b$c;
.super Ljava/lang/Object;
.source "GlobalPostProcProviderInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lj4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj4/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj4/b;-><init>(Lj4/b$a;)V

    sput-object v0, Lj4/b$c;->a:Lj4/b;

    return-void
.end method

.method static synthetic a()Lj4/b;
    .locals 1

    sget-object v0, Lj4/b$c;->a:Lj4/b;

    return-object v0
.end method
