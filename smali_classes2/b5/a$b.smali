.class Lb5/a$b;
.super Ljava/lang/Object;
.source "CertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lb5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb5/a;-><init>(Lb5/a$a;)V

    sput-object v0, Lb5/a$b;->a:Lb5/a;

    return-void
.end method

.method static synthetic a()Lb5/a;
    .locals 1

    sget-object v0, Lb5/a$b;->a:Lb5/a;

    return-object v0
.end method
