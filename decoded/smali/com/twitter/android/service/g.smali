.class public final Lcom/twitter/android/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lcom/twitter/android/service/l;

.field public final b:J

.field public final c:Lcom/twitter/android/service/l;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/twitter/android/service/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;Lcom/twitter/android/service/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/service/l;Lcom/twitter/android/service/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/service/g;->a:Lcom/twitter/android/service/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/service/g;->b:J

    iput-object p2, p0, Lcom/twitter/android/service/g;->c:Lcom/twitter/android/service/l;

    return-void
.end method
