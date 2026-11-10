.class public final Ldb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldp;

.field private static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldp;

    invoke-direct {v0}, Ldp;-><init>()V

    sput-object v0, Ldb;->a:Ldp;

    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    sput-object v0, Ldb;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lbl;J)Lac;
    .locals 35

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v23, v13

    move-object/from16 v13, v18

    move/from16 v18, v17

    move/from16 v17, v12

    move/from16 v12, v16

    move-wide/from16 v24, v19

    move/from16 v19, v22

    move-object/from16 v20, v3

    move-object/from16 v26, v14

    move v14, v11

    move v11, v15

    move-wide/from16 v15, v24

    move/from16 v27, v10

    move-object/from16 v10, v26

    move-object/from16 v28, v9

    move/from16 v9, v27

    move-object/from16 v29, v8

    move-object/from16 v8, v28

    move-object/from16 v30, v7

    move-object/from16 v7, v29

    move-object/from16 v31, v6

    move-object/from16 v6, v30

    move-wide/from16 v32, v4

    move-wide/from16 v3, v32

    move-object/from16 v5, v31

    move-object/from16 v34, v21

    move-object/from16 v21, v2

    move-object/from16 v2, v34

    :goto_0
    sget-object v22, Lcg;->b:Lcg;

    move-object v0, v2

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_11

    sget-object v22, Lbg;->a:[I

    invoke-virtual {v2}, Lcg;->ordinal()I

    move-result v2

    aget v2, v22, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move/from16 v2, v19

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v22

    move/from16 v23, v10

    move-object v10, v9

    move v9, v13

    move-object v13, v5

    move-object/from16 v5, v17

    move/from16 v17, v11

    move v11, v8

    move-object v8, v14

    move v14, v12

    move v12, v7

    move-object v7, v15

    move-wide/from16 v24, v3

    move-wide/from16 v3, v18

    move/from16 v19, v2

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v2, v22

    move-wide/from16 v15, v24

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "name"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v12

    move v12, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v2

    move/from16 v2, v19

    move-wide/from16 v25, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v7, v24

    move/from16 v6, v18

    move-wide/from16 v18, v3

    move-wide/from16 v3, v25

    goto :goto_1

    :cond_1
    const-string v22, "screen_name"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move/from16 v6, v18

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v2

    move/from16 v2, v19

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto :goto_1

    :cond_2
    const-string v22, "profile_image_url"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move v7, v12

    move v12, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move-wide/from16 v24, v15

    move-object v15, v2

    move-object/from16 v16, v6

    move/from16 v2, v19

    move/from16 v6, v18

    move-wide/from16 v18, v3

    move-wide/from16 v3, v24

    goto/16 :goto_1

    :cond_3
    const-string v22, "description"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v19

    move-wide/from16 v25, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move v7, v12

    move/from16 v6, v18

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v2

    move-wide/from16 v3, v25

    move/from16 v2, v24

    goto/16 :goto_1

    :cond_4
    const-string v22, "url"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move/from16 v10, v23

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v2

    move/from16 v2, v19

    move-wide/from16 v18, v3

    move-wide/from16 v3, v24

    goto/16 :goto_1

    :cond_5
    const-string v22, "location"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v18

    move/from16 v25, v12

    move v12, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v2

    move/from16 v2, v19

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_1

    :cond_6
    const-string v22, "created_at"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v15

    move/from16 v2, v19

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :catch_0
    move-exception v15

    sget-object v15, Lci;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v15, v2}, Lci;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v15

    move/from16 v2, v19

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "id"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v2

    move/from16 v24, v19

    move-wide/from16 v25, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v2

    move-object v14, v8

    move-wide/from16 v3, v25

    move/from16 v2, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :cond_7
    const-string v22, "followers_count"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v2

    move-object v9, v10

    move/from16 v10, v23

    move-object/from16 v24, v13

    move v13, v2

    move/from16 v2, v19

    move/from16 v25, v12

    move v12, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v24

    move/from16 v26, v18

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v7, v25

    move/from16 v6, v26

    goto/16 :goto_1

    :cond_8
    const-string v22, "friends_count"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v2

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v12

    move v12, v2

    move/from16 v2, v19

    move-wide/from16 v25, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v7, v24

    move/from16 v6, v18

    move-wide/from16 v18, v3

    move-wide/from16 v3, v25

    goto/16 :goto_1

    :cond_9
    const-string v22, "statuses_count"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v2

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v11

    move v11, v2

    move/from16 v2, v19

    move/from16 v25, v12

    move v12, v14

    move-object v14, v8

    move/from16 v8, v24

    move-wide/from16 v26, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v7, v25

    move/from16 v6, v18

    move-wide/from16 v18, v3

    move-wide/from16 v3, v26

    goto/16 :goto_1

    :cond_a
    const-string v22, "favourites_count"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v2

    move/from16 v24, v19

    move-wide/from16 v25, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v25

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move v10, v2

    move/from16 v2, v24

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "protected"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/4 v2, 0x0

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v12

    move v12, v14

    move-object v14, v8

    move v8, v2

    move/from16 v2, v19

    move/from16 v25, v18

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_1

    :cond_b
    const-string v22, "geo_enabled"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move/from16 v24, v19

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move v7, v12

    move v6, v2

    move v12, v14

    move/from16 v2, v24

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    const-string v22, "protected"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/4 v2, 0x1

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v12

    move v12, v14

    move-object v14, v8

    move v8, v2

    move/from16 v2, v19

    move/from16 v25, v18

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v7, v24

    move/from16 v6, v25

    goto/16 :goto_1

    :cond_c
    const-string v22, "verified"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/4 v2, 0x1

    move v12, v14

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v24, v19

    move/from16 v25, v18

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move v7, v2

    move/from16 v6, v25

    move/from16 v2, v24

    goto/16 :goto_1

    :cond_d
    const-string v22, "geo_enabled"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    const/4 v2, 0x1

    move/from16 v24, v19

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move v7, v12

    move v6, v2

    move v12, v14

    move/from16 v2, v24

    move-object v14, v8

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :cond_e
    const-string v22, "following"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    or-int/lit8 v2, v19, 0x1

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :cond_f
    const-string v22, "followed_by"

    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v2, v19, 0x2

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "status"

    move-object v0, v2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Ldb;->b(Lbl;Lac;)Lq;

    move-result-object v2

    move-object/from16 v20, v2

    move/from16 v2, v19

    move-object/from16 v24, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v24

    move/from16 v26, v14

    move-object v14, v8

    move/from16 v8, v25

    move/from16 v27, v12

    move/from16 v12, v26

    move-object/from16 v28, v7

    move/from16 v7, v27

    move-object/from16 v29, v6

    move/from16 v6, v18

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    goto/16 :goto_1

    :cond_10
    invoke-static/range {p0 .. p0}, Ldb;->x(Lbl;)V

    move/from16 v2, v19

    move-wide/from16 v24, v15

    move-object v15, v7

    move-object/from16 v16, v6

    move/from16 v6, v18

    move v7, v12

    move v12, v14

    move-wide/from16 v18, v3

    move-object v14, v8

    move-wide/from16 v3, v24

    move v8, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object v5, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v2

    move/from16 v2, v19

    move-object/from16 v24, v13

    move v13, v9

    move-object v9, v10

    move/from16 v10, v23

    move/from16 v25, v11

    move/from16 v11, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v24

    move/from16 v26, v14

    move-object v14, v8

    move/from16 v8, v25

    move/from16 v27, v12

    move/from16 v12, v26

    move-object/from16 v28, v7

    move/from16 v7, v27

    move-object/from16 v29, v6

    move/from16 v6, v18

    move-wide/from16 v18, v3

    move-wide v3, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    goto/16 :goto_1

    :cond_11
    new-instance v2, Lac;

    const/16 p0, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Ldb;->a(Ljava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v21, p1

    invoke-direct/range {v2 .. v23}, Lac;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;IJIZILq;JI)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lbl;)Ldh;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    sget-object v4, Lcg;->b:Lcg;

    if-eq v1, v4, :cond_2

    sget-object v4, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    move-object v1, v2

    move-object v2, v3

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :pswitch_0
    const-string v4, "users"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Ldb;->b(Lbl;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v3

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v4, Lcg;->d:Lcg;

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v1

    const-string v4, "next_cursor"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_2
    new-instance v0, Ldh;

    invoke-direct {v0, v3, v2}, Ldh;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lbl;I)Ldh;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    sget-object v4, Lcg;->b:Lcg;

    if-eq v1, v4, :cond_4

    sget-object v4, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    move-object v1, v2

    move-object v2, v3

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :pswitch_0
    const-string v4, "lists"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v2

    :goto_2
    sget-object v4, Lcg;->d:Lcg;

    if-eq v2, v4, :cond_2

    sget-object v4, Lcg;->a:Lcg;

    if-ne v2, v4, :cond_1

    invoke-static {p0, p1}, Ldb;->b(Lbl;I)Lcm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    :goto_3
    sget-object v4, Lcg;->d:Lcg;

    if-eq v1, v4, :cond_0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_3

    :pswitch_1
    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v1

    const-string v4, "next_cursor"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_4
    new-instance v0, Ldh;

    invoke-direct {v0, v3, v2}, Ldh;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lac;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    sget-object v2, Ldb;->a:Ldp;

    invoke-virtual {v2, v1}, Ldp;->a(Ljava/io/Writer;)Las;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Las;->c()V

    const-string v2, "id"

    iget-wide v3, p0, Lac;->a:J

    invoke-virtual {v0, v2, v3, v4}, Las;->a(Ljava/lang/String;J)V

    const-string v2, "screen_name"

    iget-object v3, p0, Lac;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lac;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "name"

    iget-object v3, p0, Lac;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lac;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "profile_image_url"

    iget-object v3, p0, Lac;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lac;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "description"

    iget-object v3, p0, Lac;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lac;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v2, "url"

    iget-object v3, p0, Lac;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lac;->i:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, "location"

    iget-object v3, p0, Lac;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-wide v2, p0, Lac;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const-string v2, "created_at"

    iget-wide v3, p0, Lac;->l:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "friends_count"

    iget v3, p0, Lac;->k:I

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;I)V

    const-string v2, "followers_count"

    iget v3, p0, Lac;->j:I

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;I)V

    const-string v2, "statuses_count"

    iget v3, p0, Lac;->m:I

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;I)V

    const-string v2, "geo_enabled"

    iget-boolean v3, p0, Lac;->o:Z

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Z)V

    const-string v2, "protected"

    iget-boolean v3, p0, Lac;->g:Z

    invoke-virtual {v0, v2, v3}, Las;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Las;->d()V

    invoke-virtual {v0}, Las;->e()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, ""

    invoke-static {v0}, Lci;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {v1}, Lci;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Laz;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lg;->a:Lg;

    invoke-virtual {v0, p0}, Lg;->a(Ljava/lang/String;)Ldj;

    move-result-object v0

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Ldj;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Ldj;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Laz;->a(Ljava/util/ArrayList;)V

    sget-object v0, Lae;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v8

    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v6, v5, v4

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    const-string v6, " "

    invoke-virtual {v1, v4, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v4, v6, v8

    sub-int v4, v5, v7

    aput v4, v6, v7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Laz;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Ldj;->a:Ljava/lang/String;

    const-string v1, "((\\s\\s+)|\\n|\\r)"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lbl;Lac;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v1

    :goto_0
    sget-object v2, Lcg;->d:Lcg;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcg;->a:Lcg;

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1}, Ldb;->b(Lbl;Lac;)Lq;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Ldb;->a:Ldp;

    invoke-virtual {v0, p0}, Ldp;->a(Ljava/lang/String;)Lbl;

    move-result-object v0

    invoke-virtual {v0}, Lbl;->g()Lcg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lbl;->g()Lcg;

    move-result-object v2

    :cond_1
    sget-object v3, Lcg;->d:Lcg;

    if-eq v2, v3, :cond_3

    :goto_1
    sget-object v3, Lcg;->d:Lcg;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcg;->c:Lcg;

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Ldb;->w(Lbl;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Lbl;->g()Lcg;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0
.end method

.method public static b(Lbl;I)Lcm;
    .locals 22

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v13

    move-object/from16 v16, v13

    move-object v13, v3

    move-object/from16 v3, v16

    :goto_0
    sget-object v14, Lcg;->b:Lcg;

    if-eq v3, v14, :cond_8

    sget-object v14, Lbg;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v3

    aget v3, v14, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v3, v12

    move-object v12, v13

    move/from16 v16, v10

    move/from16 v17, v9

    move-object v9, v6

    move/from16 v6, v17

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, v18

    move-wide/from16 v19, v4

    move/from16 v5, v16

    move v4, v11

    move-wide/from16 v10, v19

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v13

    move-object/from16 v16, v13

    move-object v13, v12

    move-object v12, v3

    move-object/from16 v3, v16

    move/from16 v17, v5

    move/from16 v18, v6

    move-object v6, v9

    move/from16 v9, v18

    move-object/from16 v19, v7

    move-object v7, v8

    move-object/from16 v8, v19

    move-wide/from16 v20, v10

    move/from16 v10, v17

    move v11, v4

    move-wide/from16 v4, v20

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v3

    const-string v14, "name"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move v6, v9

    move-object v9, v3

    move-object v3, v12

    move-object v12, v13

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    move/from16 v17, v11

    move-wide/from16 v18, v4

    move/from16 v4, v17

    move v5, v10

    move-wide/from16 v10, v18

    goto :goto_1

    :cond_1
    const-string v14, "full_name"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-object v7, v8

    move-object v8, v3

    move-object v3, v12

    move-object v12, v13

    move/from16 v16, v10

    move/from16 v17, v11

    move-wide v10, v4

    move/from16 v5, v16

    move/from16 v4, v17

    move-object/from16 v18, v6

    move v6, v9

    move-object/from16 v9, v18

    goto :goto_1

    :cond_2
    const-string v14, "description"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-object v8, v7

    move-object v7, v3

    move-object v3, v12

    move-object v12, v13

    move/from16 v16, v11

    move/from16 v17, v10

    move-wide v10, v4

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v18, v6

    move v6, v9

    move-object/from16 v9, v18

    goto :goto_1

    :cond_3
    const-string v14, "mode"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    const-string v11, "public"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move-object/from16 v16, v12

    move-object v12, v13

    move/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v18, v10

    move-wide v10, v4

    move/from16 v5, v18

    move/from16 v4, v17

    move-object/from16 v19, v7

    move-object v7, v8

    move-object/from16 v8, v19

    move/from16 v20, v9

    move-object v9, v6

    move/from16 v6, v20

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x1

    move-object/from16 v16, v12

    move-object v12, v13

    move/from16 v17, v3

    move-object/from16 v3, v16

    move/from16 v18, v10

    move-wide v10, v4

    move/from16 v5, v18

    move/from16 v4, v17

    move-object/from16 v19, v7

    move-object v7, v8

    move-object/from16 v8, v19

    move/from16 v20, v9

    move-object v9, v6

    move/from16 v6, v20

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v3

    const-string v14, "member_count"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v3

    move-object v9, v6

    move v6, v3

    move-object v3, v12

    move-object v12, v13

    move-object/from16 v16, v8

    move-object v8, v7

    move-object/from16 v7, v16

    move/from16 v17, v10

    move-wide/from16 v18, v4

    move/from16 v5, v17

    move v4, v11

    move-wide/from16 v10, v18

    goto/16 :goto_1

    :cond_5
    const-string v14, "subscriber_count"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v3

    move-object/from16 v16, v12

    move-object v12, v13

    move/from16 v17, v11

    move-wide v10, v4

    move v5, v3

    move/from16 v4, v17

    move-object/from16 v3, v16

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v8, v18

    move/from16 v19, v9

    move-object v9, v6

    move/from16 v6, v19

    goto/16 :goto_1

    :cond_6
    const-string v14, "id"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v3

    move v5, v10

    move/from16 v16, v11

    move-wide v10, v3

    move-object v3, v12

    move/from16 v4, v16

    move-object v12, v13

    move-object/from16 v17, v7

    move-object v7, v8

    move-object/from16 v8, v17

    move/from16 v18, v9

    move-object v9, v6

    move/from16 v6, v18

    goto/16 :goto_1

    :pswitch_3
    const-string v3, "user"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v3

    move-object v12, v13

    move/from16 v16, v10

    move/from16 v17, v9

    move-object v9, v6

    move/from16 v6, v17

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, v18

    move-wide/from16 v19, v4

    move/from16 v5, v16

    move v4, v11

    move-wide/from16 v10, v19

    goto/16 :goto_1

    :cond_7
    invoke-static/range {p0 .. p0}, Ldb;->x(Lbl;)V

    move-object v3, v12

    move-object v12, v13

    move/from16 v16, v10

    move/from16 v17, v9

    move-object v9, v6

    move/from16 v6, v17

    move-object/from16 v18, v8

    move-object v8, v7

    move-object/from16 v7, v18

    move-wide/from16 v19, v4

    move/from16 v5, v16

    move v4, v11

    move-wide/from16 v10, v19

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v12

    move-object v12, v3

    move-object/from16 v3, v16

    move/from16 v17, v10

    move/from16 v18, v9

    move-object v9, v6

    move/from16 v6, v18

    move-object/from16 v19, v8

    move-object v8, v7

    move-object/from16 v7, v19

    move-wide/from16 v20, v4

    move/from16 v5, v17

    move v4, v11

    move-wide/from16 v10, v20

    goto/16 :goto_1

    :cond_8
    new-instance v3, Lcm;

    move/from16 v13, p1

    invoke-direct/range {v3 .. v13}, Lcm;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILac;I)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "[^a-zA-Z0-9_]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static b(Lbl;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v3

    :goto_0
    sget-object v4, Lcg;->d:Lcg;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcg;->a:Lcg;

    if-ne v3, v4, :cond_0

    invoke-static {p0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b(Lbl;Lac;)Lq;
    .locals 49

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v24

    move-object/from16 v43, v24

    move-wide/from16 v24, v18

    move-object/from16 v19, v17

    move-object/from16 v18, v15

    move-object/from16 v17, v21

    move v15, v14

    move-object/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v3

    move-object/from16 v3, v43

    move-object/from16 v44, v20

    move-object/from16 v20, v16

    move-object/from16 v16, v44

    move-wide/from16 v45, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-wide/from16 v47, v12

    move-wide/from16 v13, v47

    move-wide/from16 v11, v45

    :goto_0
    sget-object v6, Lcg;->b:Lcg;

    if-eq v3, v6, :cond_f

    sget-object v6, Lbg;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move/from16 v3, v22

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v44, v15

    move-wide/from16 v45, v11

    move/from16 v12, v44

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v45

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v24

    move-object/from16 v43, v24

    move-wide/from16 v24, v6

    move-object/from16 v7, v20

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v5

    move-object/from16 v44, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v11

    move/from16 v45, v12

    move-wide v11, v15

    move/from16 v15, v45

    move-object/from16 v16, v44

    move-object/from16 v46, v4

    move-wide/from16 v4, v21

    move/from16 v22, v3

    move-object/from16 v21, v46

    move-object/from16 v3, v43

    goto :goto_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "created_at"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v6, v24

    move-object/from16 v43, v21

    move-object/from16 v44, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v3

    move/from16 v3, v22

    move-wide/from16 v21, v4

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    move/from16 v45, v15

    move-wide/from16 v46, v11

    move/from16 v12, v45

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v46

    goto :goto_1

    :cond_1
    const-string v6, "source"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldb;->d(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    iget-object v3, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v8, v16

    move-object/from16 v9, v19

    move-object/from16 v19, v3

    move/from16 v3, v22

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-object/from16 v44, v18

    move-object/from16 v18, v6

    move-wide/from16 v6, v24

    move-wide/from16 v45, v11

    move-object/from16 v11, v44

    move v12, v15

    move-wide/from16 v15, v45

    goto/16 :goto_1

    :cond_2
    const-string v6, "text"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v43, v17

    move-object/from16 v17, v3

    move/from16 v3, v22

    move-object/from16 v44, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v45, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v44

    move-wide/from16 v46, v11

    move-object/from16 v11, v45

    move v12, v15

    move-wide/from16 v15, v46

    move-object/from16 v48, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v43

    move-object/from16 v4, v48

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v3

    move-object/from16 v5, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v43, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v44, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v43

    move-wide/from16 v45, v11

    move-object/from16 v11, v44

    move v12, v15

    move-wide/from16 v15, v45

    move-object/from16 v47, v21

    move/from16 v48, v22

    move-wide/from16 v21, v3

    move-object/from16 v4, v47

    move/from16 v3, v48

    goto/16 :goto_1

    :cond_3
    const-string v6, "in_reply_to_user_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v11

    move/from16 v3, v22

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v44, v15

    move-wide/from16 v45, v11

    move/from16 v12, v44

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v45

    goto/16 :goto_1

    :cond_4
    const-string v6, "in_reply_to_status_id"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v13

    move/from16 v3, v22

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v44, v15

    move-wide/from16 v45, v11

    move/from16 v12, v44

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v45

    goto/16 :goto_1

    :cond_5
    const-string v6, "retweet_count"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v3

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v44, v15

    move-wide/from16 v45, v11

    move/from16 v12, v44

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v45

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "favorited"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move/from16 v43, v22

    move-object/from16 v44, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v44

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v45, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide v15, v11

    move-object/from16 v11, v45

    move v12, v3

    move/from16 v3, v43

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v3

    const-string v6, "favorited"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move/from16 v43, v22

    move-object/from16 v44, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v44

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v45, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide v15, v11

    move-object/from16 v11, v45

    move v12, v3

    move/from16 v3, v43

    goto/16 :goto_1

    :pswitch_4
    const-string v3, "current_user_retweet"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v3

    :goto_2
    sget-object v6, Lcg;->b:Lcg;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcg;->h:Lcg;

    if-ne v3, v6, :cond_6

    const-string v3, "id"

    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v24

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v3

    goto :goto_2

    :cond_7
    const-string v3, "user"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v3

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v43, v17

    move-object/from16 v17, v10

    move-object v10, v3

    move/from16 v3, v22

    move-object/from16 v44, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v45, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v44

    move-wide/from16 v46, v11

    move-object/from16 v11, v45

    move v12, v15

    move-wide/from16 v15, v46

    move-object/from16 v48, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v43

    move-object/from16 v4, v48

    goto/16 :goto_1

    :cond_8
    const-string v3, "coordinates"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v43, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v43

    :goto_3
    sget-object v26, Lcg;->b:Lcg;

    move-object v0, v3

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    sget-object v26, Lbg;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v3

    aget v3, v26, v3

    sparse-switch v3, :sswitch_data_0

    :goto_4
    move-object v3, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v17

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v17

    move-object/from16 v43, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v43

    goto :goto_3

    :sswitch_0
    const-string v3, "coordinates"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static/range {p0 .. p0}, Ldb;->w(Lbl;)Landroid/util/Pair;

    move-result-object v26

    if-eqz v26, :cond_11

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    move-object/from16 v43, v6

    move-object v6, v3

    move-object/from16 v3, v43

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lbl;->h()Lbl;

    move-object v3, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v17

    goto :goto_5

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v16

    move-object/from16 v16, v17

    goto :goto_5

    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lbl;->h()Lbl;

    goto :goto_4

    :cond_a
    move/from16 v3, v22

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v16

    move-object/from16 v4, v43

    move-object/from16 v44, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v45, v15

    move-wide v15, v11

    move/from16 v12, v45

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v44

    goto/16 :goto_1

    :cond_b
    const-string v3, "place"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static/range {p0 .. p0}, Ldb;->v(Lbl;)Lal;

    move-result-object v3

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v43, v21

    move-object/from16 v44, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v45, v3

    move/from16 v3, v22

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v44

    move/from16 v46, v15

    move-wide v15, v11

    move-object/from16 v11, v45

    move/from16 v12, v46

    goto/16 :goto_1

    :cond_c
    const-string v3, "retweeted_status"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Ldb;->b(Lbl;Lac;)Lq;

    move-result-object v3

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-object/from16 v43, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v44, v3

    move/from16 v3, v22

    move-object/from16 v45, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v44

    move-wide/from16 v46, v11

    move-object/from16 v11, v45

    move v12, v15

    move-wide/from16 v15, v46

    move-object/from16 v48, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v43

    move-object/from16 v4, v48

    goto/16 :goto_1

    :cond_d
    const-string v3, "entities"

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static/range {p0 .. p0}, Laz;->a(Lbl;)Laz;

    move-result-object v3

    move/from16 v43, v22

    move-wide/from16 v21, v4

    move-object v4, v3

    move-object/from16 v5, v17

    move-object/from16 v17, v10

    move/from16 v3, v43

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v44, v15

    move-wide/from16 v45, v11

    move/from16 v12, v44

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v45

    goto/16 :goto_1

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lbl;->h()Lbl;

    move/from16 v3, v22

    move-object/from16 v43, v21

    move-wide/from16 v21, v4

    move-object/from16 v5, v17

    move-object/from16 v4, v43

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move/from16 v44, v15

    move-wide/from16 v45, v11

    move/from16 v12, v44

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move-wide/from16 v15, v45

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    move/from16 v3, v22

    move-object/from16 v43, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v7

    move-wide/from16 v6, v24

    move-object/from16 v44, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move/from16 v45, v15

    move-wide v15, v11

    move/from16 v12, v45

    move-object/from16 v11, v18

    move-object/from16 v18, v9

    move-object/from16 v9, v44

    move-wide/from16 v46, v4

    move-object/from16 v5, v43

    move-object/from16 v4, v21

    move-wide/from16 v21, v46

    goto/16 :goto_1

    :cond_f
    sget-object p0, Lci;->a:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-static {v0, v1}, Lci;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ldb;->a(Ljava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v26, -0x1

    cmp-long p0, v24, v26

    if-eqz p0, :cond_10

    new-instance v3, Lq;

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v22}, Lq;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lal;Lq;Lac;Laz;I)V

    new-instance v23, Lq;

    move-wide/from16 v26, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-wide/from16 v31, v11

    move-wide/from16 v33, v13

    move/from16 v35, v15

    move-object/from16 v36, v16

    move-object/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v3

    move-object/from16 v40, p1

    move-object/from16 v41, v21

    move/from16 v42, v22

    invoke-direct/range {v23 .. v42}, Lq;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lal;Lq;Lac;Laz;I)V

    move-object/from16 p0, v23

    :goto_7
    return-object p0

    :cond_10
    new-instance v3, Lq;

    invoke-direct/range {v3 .. v22}, Lq;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lal;Lq;Lac;Laz;I)V

    move-object/from16 p0, v3

    goto :goto_7

    :cond_11
    move-object/from16 v3, v16

    move-object/from16 v16, v17

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;)Lac;
    .locals 3

    sget-object v0, Ldb;->a:Ldp;

    invoke-virtual {v0, p0}, Ldp;->a(Ljava/lang/String;)Lbl;

    move-result-object v0

    invoke-virtual {v0}, Lbl;->g()Lcg;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ldb;->a(Lbl;J)Lac;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lbl;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldb;->a(Lbl;Lac;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    const-string v0, "<a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_3

    const/16 v1, 0x3c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "href=\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x6

    const/16 v2, 0x22

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, v3

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, v3

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, v3

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static d(Lbl;)Lq;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldb;->b(Lbl;Lac;)Lq;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lbl;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v1

    :goto_0
    sget-object v2, Lcg;->d:Lcg;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcg;->a:Lcg;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Ldb;->f(Lbl;)Lch;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static f(Lbl;)Lch;
    .locals 15

    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v8, v3

    move-object v7, v3

    move-object v6, v3

    move-object v5, v3

    move-object v4, v3

    move-wide v12, v0

    move-object v0, v2

    move-wide v1, v12

    :goto_0
    sget-object v9, Lcg;->b:Lcg;

    if-eq v0, v9, :cond_5

    sget-object v9, Lbg;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v8

    move-object v12, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v5

    move-object v13, v6

    move-wide v5, v1

    move-object v2, v13

    move-object v1, v12

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v8

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    move-object v13, v1

    move-object v14, v2

    move-wide v1, v5

    move-object v5, v3

    move-object v6, v14

    move-object v3, v4

    move-object v4, v7

    move-object v7, v13

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v0

    const-string v9, "created_at"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v3, v5

    move-object v12, v7

    move-object v7, v4

    move-object v4, v0

    move-object v0, v8

    move-object v13, v6

    move-wide v5, v1

    move-object v2, v13

    move-object v1, v12

    goto :goto_1

    :cond_1
    const-string v9, "text"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v12, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v0

    move-object v0, v8

    move-object v13, v6

    move-wide v5, v1

    move-object v2, v13

    move-object v1, v12

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v0

    const-string v9, "id"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v0

    move-object v2, v6

    move-object v12, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v5

    move-wide v5, v0

    move-object v0, v8

    move-object v1, v12

    goto :goto_1

    :pswitch_3
    const-string v0, "sender"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v10, v11}, Ldb;->a(Lbl;J)Lac;

    move-result-object v0

    move-object v12, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v5

    move-wide v5, v1

    move-object v2, v0

    move-object v1, v12

    move-object v0, v8

    goto :goto_1

    :cond_2
    const-string v0, "recipient"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, v10, v11}, Ldb;->a(Lbl;J)Lac;

    move-result-object v0

    move-object v7, v4

    move-object v4, v3

    move-object v3, v5

    move-object v12, v6

    move-wide v5, v1

    move-object v1, v0

    move-object v2, v12

    move-object v0, v8

    goto/16 :goto_1

    :cond_3
    const-string v0, "entities"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Laz;->a(Lbl;)Laz;

    move-result-object v0

    move-object v12, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v5

    move-object v13, v6

    move-wide v5, v1

    move-object v2, v13

    move-object v1, v12

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v0, v8

    move-object v12, v7

    move-object v7, v4

    move-object v4, v3

    move-object v3, v5

    move-object v13, v6

    move-wide v5, v1

    move-object v2, v13

    move-object v1, v12

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v4, v3

    move-object v3, v5

    move-object v12, v6

    move-wide v5, v1

    move-object v1, v7

    move-object v2, v12

    move-object v7, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lch;

    sget-object v4, Lci;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v4, v3}, Lci;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v5, v8}, Ldb;->a(Ljava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v8}, Lch;-><init>(JJLjava/lang/String;Lac;Lac;Laz;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static g(Lbl;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcg;->c:Lcg;

    if-ne v1, v3, :cond_1

    const-string v3, "results"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    sget-object v3, Lcg;->d:Lcg;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcg;->a:Lcg;

    if-ne v1, v3, :cond_0

    invoke-static {p0}, Ldb;->t(Lbl;)Lf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v3, Lcg;->e:Lcg;

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method public static h(Lbl;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v7, v2

    move-object v3, v1

    move-wide v1, v7

    :goto_0
    sget-object v4, Lcg;->d:Lcg;

    if-eq v3, v4, :cond_4

    sget-object v4, Lcg;->a:Lcg;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    :goto_1
    sget-object v4, Lcg;->b:Lcg;

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbg;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v6

    aget v5, v5, v6

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    goto :goto_1

    :sswitch_0
    const-string v3, "as_of"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lci;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lci;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_2

    :sswitch_2
    const-string v5, "trends"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_3
    sget-object v4, Lcg;->d:Lcg;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcg;->a:Lcg;

    if-ne v3, v4, :cond_1

    invoke-static {p0}, Ldb;->u(Lbl;)Lda;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lda;

    int-to-long v5, v3

    add-long/2addr v5, v1

    iput-wide v5, p0, Lda;->h:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static i(Lbl;)Lak;
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move v4, v3

    move-wide v7, v0

    move-object v0, v2

    move-wide v1, v7

    :goto_0
    sget-object v5, Lcg;->b:Lcg;

    if-eq v0, v5, :cond_3

    sget-object v5, Lbg;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v5, v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    move-wide v7, v1

    move-wide v0, v7

    move v2, v3

    move v3, v4

    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    move-object v7, v4

    move v4, v3

    move v3, v2

    move-wide v8, v0

    move-wide v1, v8

    move-object v0, v7

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v0

    const-string v5, "remaining_hits"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lbl;->d()I

    move-result v0

    move-wide v7, v1

    move v2, v3

    move v3, v0

    move-wide v0, v7

    goto :goto_2

    :cond_1
    const-string v5, "hourly_limit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lbl;->d()I

    move-result v0

    move v3, v4

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    goto :goto_2

    :cond_2
    const-string v5, "reset_time_in_seconds"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v0

    move v2, v3

    move v3, v4

    goto :goto_2

    :sswitch_1
    invoke-static {p0}, Ldb;->x(Lbl;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lak;

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    invoke-direct {v0, v4, v3, v1, v2}, Lak;-><init>(IIJ)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static j(Lbl;)Ldf;
    .locals 5

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    sget-object v2, Lcg;->b:Lcg;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v1

    aget v1, v3, v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_0

    :sswitch_0
    const-string v1, "short_url_length"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lbl;->d()I

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_1

    :cond_1
    new-instance v1, Ldf;

    invoke-direct {v1, v0}, Ldf;-><init>(I)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public static k(Lbl;)I
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v4

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_0
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_6

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v1

    aget v1, v3, v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_0

    :sswitch_0
    const-string v1, "relationship"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    :goto_2
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_0

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v1

    aget v1, v3, v1

    sparse-switch v1, :sswitch_data_1

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_2

    :sswitch_1
    const-string v1, "source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    move v2, v4

    :goto_4
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_3

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_5
    move v1, v2

    :goto_6
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v5, v2

    move v2, v1

    move-object v1, v5

    goto :goto_4

    :pswitch_0
    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v1

    const-string v3, "following"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_2
    const-string v3, "followed_by"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v1, v2, 0x2

    goto :goto_6

    :pswitch_1
    invoke-static {p0}, Ldb;->x(Lbl;)V

    goto :goto_5

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    invoke-static {p0}, Ldb;->x(Lbl;)V

    move v1, v2

    goto :goto_3

    :sswitch_2
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto :goto_3

    :cond_5
    invoke-static {p0}, Ldb;->x(Lbl;)V

    move v1, v2

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    goto/16 :goto_1

    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static l(Lbl;)Ljava/util/ArrayList;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    move-object v2, v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_0
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_5

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move-object v1, v2

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :sswitch_0
    const-string v3, "result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_0

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v1, v2

    :cond_1
    :goto_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :pswitch_1
    const-string v1, "places"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v2

    :goto_4
    sget-object v3, Lcg;->d:Lcg;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcg;->a:Lcg;

    if-ne v2, v3, :cond_2

    invoke-static {p0}, Ldb;->v(Lbl;)Lal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    goto :goto_4

    :cond_3
    invoke-static {p0}, Ldb;->y(Lbl;)V

    move-object v1, v2

    goto :goto_3

    :pswitch_2
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_3

    :cond_4
    invoke-static {p0}, Ldb;->x(Lbl;)V

    move-object v1, v2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    :cond_5
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static m(Lbl;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_2

    sget-object v3, Lcg;->c:Lcg;

    if-ne v1, v3, :cond_1

    const-string v3, "promoted_tweets"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    sget-object v3, Lcg;->d:Lcg;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcg;->a:Lcg;

    if-ne v1, v3, :cond_0

    invoke-static {p0}, Ldb;->d(Lbl;)Lq;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v3, Lcg;->e:Lcg;

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method public static n(Lbl;)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v1

    sget-object v2, Lcg;->c:Lcg;

    if-ne v1, v2, :cond_1

    :goto_0
    sget-object v2, Lcg;->d:Lcg;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcg;->a:Lcg;

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Ldb;->o(Lbl;)Lda;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static o(Lbl;)Lda;
    .locals 13

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v0

    move-wide v5, v2

    move-wide v9, v2

    move-wide v3, v9

    move-object v2, v1

    :goto_0
    sget-object v7, Lcg;->b:Lcg;

    if-eq v0, v7, :cond_3

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lbg;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v8, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-wide v9, v3

    move-object v3, v1

    move-wide v0, v9

    move-wide v11, v5

    move-wide v4, v11

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v6

    move-wide v9, v0

    move-object v1, v3

    move-object v0, v6

    move-wide v11, v4

    move-wide v5, v11

    move-wide v3, v9

    goto :goto_0

    :pswitch_1
    const-string v0, "id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v5

    move-wide v9, v3

    move-object v3, v1

    move-wide v0, v9

    move-wide v11, v5

    move-wide v4, v11

    goto :goto_1

    :pswitch_2
    const-string v0, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-wide v9, v3

    move-object v3, v0

    move-wide v0, v9

    move-wide v11, v5

    move-wide v4, v11

    goto :goto_1

    :cond_1
    const-string v0, "query"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-wide v9, v3

    move-object v3, v1

    move-wide v0, v9

    move-wide v11, v5

    move-wide v4, v11

    goto :goto_1

    :cond_2
    const-string v0, "created_at"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lci;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lci;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v3

    move-wide v9, v3

    move-object v3, v1

    move-wide v0, v9

    move-wide v11, v5

    move-wide v4, v11

    goto :goto_1

    :cond_3
    new-instance v0, Lda;

    invoke-direct/range {v0 .. v6}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static p(Lbl;)Ljava/util/ArrayList;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v1

    sget-object v2, Lcg;->c:Lcg;

    if-ne v1, v2, :cond_4

    move-object v2, v3

    move-object v4, v1

    move-object v1, v3

    :goto_0
    sget-object v5, Lcg;->d:Lcg;

    if-eq v4, v5, :cond_4

    sget-object v5, Lcg;->a:Lcg;

    if-ne v4, v5, :cond_3

    :goto_1
    sget-object v5, Lcg;->b:Lcg;

    if-eq v4, v5, :cond_2

    sget-object v5, Lbg;->a:[I

    invoke-virtual {v4}, Lcg;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    goto :goto_1

    :pswitch_0
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const-string v4, "slug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v4, Lda;

    invoke-direct {v4, v2, v1}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    goto :goto_0

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static q(Lbl;)Ljava/util/ArrayList;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v0

    move-object v2, v1

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_0
    sget-object v3, Lcg;->b:Lcg;

    if-eq v1, v3, :cond_2

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v1}, Lcg;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v1, v2

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :pswitch_1
    const-string v3, "users"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Ldb;->b(Lbl;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    sget-object v3, Lcg;->d:Lcg;

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static r(Lbl;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v1

    const/4 v2, 0x0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_0
    sget-object v3, Lcg;->d:Lcg;

    if-eq v2, v3, :cond_2

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v2}, Lcg;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    goto :goto_0

    :goto_1
    :pswitch_0
    sget-object v3, Lcg;->b:Lcg;

    if-eq v2, v3, :cond_0

    sget-object v3, Lbg;->a:[I

    invoke-virtual {v2}, Lcg;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    const-string v2, "id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static s(Lbl;)Lau;
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v3

    move-object v6, v3

    move v3, v0

    move-object v0, v6

    :goto_0
    sget-object v4, Lcg;->b:Lcg;

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbg;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v5, v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    move-wide v6, v1

    move-wide v0, v6

    move v2, v3

    :goto_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    move-object v6, v3

    move v3, v2

    move-wide v7, v0

    move-wide v1, v7

    move-object v0, v6

    goto :goto_0

    :sswitch_0
    const-string v0, "scribe_interval"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "scribe_enabled"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-wide v6, v1

    move v2, v0

    move-wide v0, v6

    goto :goto_1

    :cond_1
    move-wide v6, v1

    move-wide v0, v6

    move v2, v3

    :goto_2
    new-instance v3, Lau;

    invoke-direct {v3, v2, v0, v1}, Lau;-><init>(ZJ)V

    return-object v3

    :cond_2
    move-wide v6, v1

    move v2, v0

    move-wide v0, v6

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private static t(Lbl;)Lf;
    .locals 26

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v19, v16

    move/from16 v16, v13

    move-object/from16 v20, v15

    move v15, v14

    move-wide v13, v11

    move-object v12, v10

    move-object v11, v9

    move-object v10, v8

    move-object v9, v7

    move-object v8, v6

    move-object v7, v5

    move-object/from16 v5, v20

    move-object v6, v4

    move-wide/from16 v21, v2

    move-wide/from16 v3, v21

    move-object/from16 v2, v19

    :goto_0
    sget-object v17, Lcg;->b:Lcg;

    move-object v0, v5

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_a

    sget-object v17, Lbg;->a:[I

    invoke-virtual {v5}, Lcg;->ordinal()I

    move-result v5

    aget v5, v17, v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :pswitch_0
    move/from16 v19, v15

    move-wide/from16 v20, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v20

    move/from16 v4, v16

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v8

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v7

    move-object/from16 v7, v24

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v16

    move-object/from16 v19, v16

    move/from16 v16, v4

    move/from16 v20, v3

    move-wide v3, v14

    move/from16 v15, v20

    move-wide/from16 v21, v5

    move-object v6, v13

    move-object/from16 v5, v19

    move-wide/from16 v13, v21

    move-object/from16 v23, v9

    move-object v9, v10

    move-object/from16 v10, v23

    move-object/from16 v24, v11

    move-object v11, v8

    move-object/from16 v8, v24

    move-object/from16 v25, v12

    move-object v12, v7

    move-object/from16 v7, v25

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v17

    const-string v2, "created_at"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-wide v5, v13

    move-object v13, v2

    move-object/from16 v2, v17

    move-object/from16 v19, v12

    move-object v12, v7

    move-object/from16 v7, v19

    move-object/from16 v20, v11

    move-object v11, v8

    move-object/from16 v8, v20

    move-object/from16 v21, v9

    move-object v9, v10

    move-object/from16 v10, v21

    move/from16 v22, v15

    move-wide v14, v3

    move/from16 v4, v16

    move/from16 v3, v22

    goto :goto_1

    :cond_1
    const-string v2, "source"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Ldb;->a(Ljava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldb;->d(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v2, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object v7, v12

    move-object v8, v11

    move-object v11, v5

    move-object v12, v2

    move-object/from16 v2, v17

    move/from16 v19, v15

    move-object/from16 v20, v10

    move-object v10, v9

    move-object/from16 v9, v20

    move-wide/from16 v21, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v21

    move/from16 v4, v16

    goto/16 :goto_1

    :cond_2
    const-string v2, "text"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object v9, v10

    move-object v10, v2

    move-object/from16 v2, v17

    move-wide/from16 v19, v13

    move-object v13, v6

    move-wide/from16 v5, v19

    move-object/from16 v21, v11

    move-object v11, v8

    move-object/from16 v8, v21

    move/from16 v22, v15

    move-wide v14, v3

    move/from16 v4, v16

    move/from16 v3, v22

    move-object/from16 v23, v12

    move-object v12, v7

    move-object/from16 v7, v23

    goto/16 :goto_1

    :cond_3
    const-string v2, "profile_image_url"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object v10, v9

    move-object v9, v2

    move-object/from16 v2, v17

    move-wide/from16 v19, v13

    move-object v13, v6

    move-wide/from16 v5, v19

    move-object/from16 v21, v11

    move-object v11, v8

    move-object/from16 v8, v21

    move/from16 v22, v15

    move-wide v14, v3

    move/from16 v4, v16

    move/from16 v3, v22

    move-object/from16 v23, v12

    move-object v12, v7

    move-object/from16 v7, v23

    goto/16 :goto_1

    :cond_4
    const-string v2, "to_user"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object v11, v8

    move-object v8, v2

    move-object/from16 v2, v17

    move-wide/from16 v19, v13

    move-object v13, v6

    move-wide/from16 v5, v19

    move/from16 v21, v15

    move-wide v14, v3

    move/from16 v4, v16

    move/from16 v3, v21

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v12

    move-object v12, v7

    move-object/from16 v7, v23

    goto/16 :goto_1

    :cond_5
    const-string v2, "from_user"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object v12, v7

    move-object v7, v2

    move-object/from16 v2, v17

    move-wide/from16 v19, v13

    move-object v13, v6

    move-wide/from16 v5, v19

    move-object/from16 v21, v11

    move-object v11, v8

    move-object/from16 v8, v21

    move-object/from16 v22, v9

    move-object v9, v10

    move-object/from16 v10, v22

    move/from16 v23, v15

    move-wide v14, v3

    move/from16 v4, v16

    move/from16 v3, v23

    goto/16 :goto_1

    :cond_6
    const-string v2, "from_user_id"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v13

    move-object/from16 v2, v17

    move/from16 v19, v15

    move-wide/from16 v20, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v20

    move/from16 v4, v16

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v8

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->e()J

    move-result-wide v3

    move/from16 v19, v15

    move-wide/from16 v20, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v20

    move/from16 v4, v16

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v8

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    :pswitch_3
    const-string v5, "metadata"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v5

    :goto_2
    sget-object v17, Lcg;->b:Lcg;

    move-object v0, v5

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v2

    sget-object v17, Lbg;->a:[I

    invoke-virtual {v5}, Lcg;->ordinal()I

    move-result v5

    aget v5, v17, v5

    packed-switch v5, :pswitch_data_1

    :cond_7
    :goto_3
    :pswitch_4
    move v5, v15

    move/from16 v15, v16

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lbl;->g()Lcg;

    move-result-object v16

    move-object/from16 v19, v16

    move/from16 v16, v15

    move v15, v5

    move-object/from16 v5, v19

    goto :goto_2

    :pswitch_5
    const-string v5, "result_type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "popular"

    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move/from16 v15, v16

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    move/from16 v15, v16

    goto :goto_4

    :pswitch_6
    const-string v5, "recent_retweets"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lbl;->d()I

    move-result v5

    move/from16 v19, v15

    move v15, v5

    move/from16 v5, v19

    goto :goto_4

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lbl;->h()Lbl;

    goto :goto_3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lbl;->h()Lbl;

    move/from16 v19, v15

    move-wide/from16 v20, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v20

    move/from16 v4, v16

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v8

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move/from16 v19, v15

    move-wide/from16 v20, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v20

    move/from16 v4, v16

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v8

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    :cond_a
    invoke-static {v9}, Laz;->a(Ljava/lang/String;)Laz;

    move-result-object v18

    new-instance v2, Lf;

    sget-object p0, Lci;->b:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lci;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ldb;->a(Ljava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v18}, Lf;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Laz;)V

    return-object v2

    :cond_b
    move-object/from16 v2, v17

    move/from16 v19, v15

    move-wide/from16 v20, v13

    move-object v13, v6

    move-wide v14, v3

    move/from16 v3, v19

    move-wide/from16 v5, v20

    move/from16 v4, v16

    move-object/from16 v22, v10

    move-object v10, v9

    move-object/from16 v9, v22

    move-object/from16 v23, v8

    move-object v8, v11

    move-object/from16 v11, v23

    move-object/from16 v24, v12

    move-object v12, v7

    move-object/from16 v7, v24

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method private static u(Lbl;)Lda;
    .locals 12

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    move-wide v5, v3

    move-object v2, v1

    :goto_0
    sget-object v7, Lcg;->b:Lcg;

    if-eq v0, v7, :cond_4

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lbg;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v8, v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_1
    move-wide v9, v5

    move-object v5, v1

    move-wide v0, v9

    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v6

    move-object v9, v6

    move-wide v10, v0

    move-object v0, v9

    move-object v1, v5

    move-wide v5, v10

    goto :goto_0

    :sswitch_0
    const-string v0, "name"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-wide v9, v5

    move-object v5, v0

    move-wide v0, v9

    goto :goto_2

    :cond_1
    const-string v0, "query"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lci;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-wide v9, v5

    move-object v5, v1

    move-wide v0, v9

    goto :goto_2

    :sswitch_1
    const-string v0, "promoted_content"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    :goto_3
    sget-object v7, Lcg;->b:Lcg;

    if-eq v0, v7, :cond_0

    sget-object v7, Lbg;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v0

    aget v0, v7, v0

    sparse-switch v0, :sswitch_data_1

    :cond_2
    :goto_4
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    goto :goto_3

    :sswitch_2
    const-string v0, "promoted_trend_id"

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbl;->e()J

    move-result-wide v5

    goto :goto_4

    :sswitch_3
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-wide v9, v5

    move-object v5, v1

    move-wide v0, v9

    goto :goto_2

    :sswitch_4
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_1

    :cond_4
    new-instance v0, Lda;

    invoke-direct/range {v0 .. v6}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x4 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method private static v(Lbl;)Lal;
    .locals 13

    const/16 v11, 0x5d

    const/16 v10, 0x5b

    const/16 v9, 0x2c

    const/4 v8, 0x0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    move-object v4, v8

    move-object v0, v8

    :goto_0
    sget-object v5, Lcg;->b:Lcg;

    if-eq v3, v5, :cond_b

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lbg;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v3

    aget v3, v6, v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    move-object v3, v4

    :goto_2
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    goto :goto_0

    :sswitch_0
    const-string v3, "full_name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v2

    move-object v3, v4

    goto :goto_2

    :cond_1
    const-string v3, "place_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v1

    move-object v3, v4

    goto :goto_2

    :cond_2
    const-string v3, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lbl;->j()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v3, v4

    goto :goto_2

    :sswitch_2
    const-string v3, "bounding_box"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    :goto_3
    sget-object v5, Lcg;->b:Lcg;

    if-eq v3, v5, :cond_9

    invoke-virtual {p0}, Lbl;->m()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lbg;->a:[I

    invoke-virtual {v3}, Lcg;->ordinal()I

    move-result v3

    aget v3, v6, v3

    sparse-switch v3, :sswitch_data_1

    :goto_4
    move-object v3, v4

    :goto_5
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    goto :goto_3

    :sswitch_3
    const-string v3, "coordinates"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p0, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lbl;->p()Lcg;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v12, v5

    move-object v5, v4

    move v4, v12

    :goto_6
    sget-object v6, Lcg;->d:Lcg;

    if-eq v5, v6, :cond_6

    sget-object v6, Lcg;->c:Lcg;

    if-ne v5, v6, :cond_5

    :goto_7
    sget-object v6, Lcg;->d:Lcg;

    if-eq v5, v6, :cond_5

    sget-object v6, Lcg;->c:Lcg;

    if-ne v5, v6, :cond_3

    invoke-static {p0}, Ldb;->w(Lbl;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v5

    goto :goto_7

    :cond_4
    const/4 v4, 0x1

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v5

    goto :goto_6

    :cond_6
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_7
    move-object v3, v8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lbl;->h()Lbl;

    move-object v3, v4

    goto :goto_5

    :sswitch_4
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto :goto_4

    :cond_9
    move-object v3, v4

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lbl;->h()Lbl;

    goto/16 :goto_1

    :cond_b
    new-instance v3, Lal;

    sget-object v5, Ldb;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v0, v1, v2, v4}, Lal;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x7 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x7 -> :sswitch_4
    .end sparse-switch
.end method

.method private static w(Lbl;)Landroid/util/Pair;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move-object v3, v0

    move-object v0, v5

    move-object v1, v5

    :goto_0
    sget-object v4, Lcg;->d:Lcg;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcg;->i:Lcg;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcg;->h:Lcg;

    if-ne v3, v4, :cond_1

    :cond_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lbl;->f()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lbl;->f()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_3
    move-object v0, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static x(Lbl;)V
    .locals 2

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    :goto_0
    sget-object v1, Lcg;->b:Lcg;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcg;->a:Lcg;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ldb;->x(Lbl;)V

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static y(Lbl;)V
    .locals 2

    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    :goto_0
    sget-object v1, Lcg;->d:Lcg;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcg;->c:Lcg;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ldb;->y(Lbl;)V

    :cond_0
    invoke-virtual {p0}, Lbl;->g()Lcg;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method
