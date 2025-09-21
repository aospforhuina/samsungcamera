.class public final Lc7/i2;
.super Ln6/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7/i2$a;
    }
.end annotation


# static fields
.field public static final b:Lc7/i2$a;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc7/i2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc7/i2$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lc7/i2;->b:Lc7/i2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lc7/i2;->b:Lc7/i2$a;

    invoke-direct {p0, v0}, Ln6/a;-><init>(Ln6/g$c;)V

    return-void
.end method
