
rule all:
    input:
        'notebooks/rendered/inspection_fda_data_cleaning_mapping.ipynb'
        , 'data/output/final_set_FDA.csv'
        
rule clean_jup:
    input:
        'notebooks/unrendered/inspection_fda_data_cleaning_mapping.ipynb'
        , 'data/input/raw_clinical_investigator_inspection_fc.xls'
        , 'data/input/raw_clinical_investigator_inspection_da.xls'
        , 'data/input/refined_mapping_fda_inspections_code.csv'
    output:
        'notebooks/rendered/inspection_fda_data_cleaning_mapping.ipynb'
        , 'data/output/final_set_FDA.csv'
        , 'docs/html/inspection_fda_data_cleaning_mapping.html'
    params:
        file='data/input/raw_clinical_investigator_inspection_fc.xls'
        , file2='data/input/raw_clinical_investigator_inspection_da.xls'
        , file_map='data/input/refined_mapping_fda_inspections_code.csv'
        , file_out='data/output/final_set_FDA.csv'

    shell:
        'papermill {input[0]} {output[0]} \
            -p file {input[1]} \
            -p file2 {input[2]} \
            -p file_map {input[3]} \
            -p file_out {output[1]} \
        && jupyter nbconvert --to html {output[0]} --output ../../{output[2]}'

